/**********************************************************************
 * tb_sr.sv
 *
 * This module implements the test bench for the shiftreg module.
 *
 * The intended application provides a 1 MHz SPI clock.
 * To simulate this, a counter is invoked in the test bench that acts
 * as a prescaler.
 * To simulate a break between bytes of data, the blank parameter is
 * directly controlled in the initial block.
 * The data sent to the device is controlled with the register data.
 *
 * Status
 * Basic design elements are verified.
 *********************************************************************/
`include "verilog_assert.vh"

module tb(
);

reg clk;
reg spi_enable;
reg mosi;
reg rst;
wire sck;
reg sck_in;
reg spi_ld;
reg [7:0] ld_data;
wire [7:0] data_out;
reg [7:0] test_data;
integer ii;

always #4 clk <= ~clk;

assign sck = (spi_enable == 1) ? sck_in : 0;

always @(posedge clk)
begin: bhv_sck
    sck_in = ~sck_in;
end

task spi_xchg;
    input [7:0] datai;
    output [7:0] datao;

    /* setup frame: initialize clock input for clock driver and assert ss */
    /* SR samples on the falling edge and outputs on rising edge */
    begin
    @(posedge sck_in);

    spi_enable = 1;
    mosi = datai[7];
    @(negedge sck);
    datao[7] = miso;

    @(posedge sck);
    mosi = datai[6];
    @(negedge sck);
    datao[6] = miso;

    @(posedge sck);
    mosi = datai[5];
    @(negedge sck);
    datao[5] = miso;

    @(posedge sck);
    mosi = datai[4];
    @(negedge sck);
    datao[4] = miso;

    @(posedge sck);
    mosi = datai[3];
    @(negedge sck);
    datao[3] = miso;

    @(posedge sck);
    mosi = datai[2];
    @(negedge sck);
    datao[2] = miso;

    @(posedge sck);
    mosi = datai[1];
    @(negedge sck);
    datao[1] = miso;

    @(posedge sck);
    mosi = datai[0];
    @(negedge sck);
    datao[0] = miso;

    spi_enable = 0;
    @(negedge sck_in);

    end
endtask

/* use sequential logic in the initial block to avoid race conditions */
initial begin
    $dumpfile("tb_sr.vcd");
    $dumpvars(0, tb);

    rst = 0;
    clk = 0;
    spi_enable = 0;
    spi_ld = 0;
    mosi = 0;
    sck_in = 0;

    /* initialize internal memory for sr0 instance */
    sr0.int_sr = 8'h00;
    sr0.int_ser_o = 0;

    /* generate reset pulse */
    @(negedge clk);
    rst = 1;
    @(negedge clk);
    rst = 0;
    
    /* examine data load and shift in of the same value */
    @(posedge clk);
    ld_data = 8'hDE;
    spi_ld = 1;
    @(posedge clk);
    spi_ld = 0;
    `ASSERT (sr0.int_sr, ld_data)
    spi_xchg(ld_data, test_data);
    `ASSERT (test_data, ld_data)
    @(posedge clk);

    /* clear out shift register buffer */
    @(posedge clk);
    spi_xchg(8'h00, test_data);
    @(posedge clk);

    /* with an empty shift register buffer, examine shift of data */
    @(posedge clk);
    @(posedge clk);
    spi_xchg(ld_data, test_data);
    `ASSERT (test_data, 8'h00);
    @(posedge clk);

    @(posedge clk);
    
    $finish;
end

shiftreg sr0(
    .sck(sck),
    .ser_i(mosi),
    .ser_o(miso),
    .data_i(ld_data),
    .data_o(data_out),
    .ld(spi_ld)
);

endmodule

