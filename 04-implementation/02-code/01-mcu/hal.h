#ifndef HAL_H
#define HAL_H

#include <xc.h>
#include <stdint.h>

#define HAL_INSNS_PER_SECTOR 512
#define HAL_BYTES_PER_INSN 3
#define HAL_INSNS_PER_PAGE 64
#define HAL_BYTES_PER_SECTOR ((HAL_INSNS_PER_SECTOR) * (HAL_BYTES_PER_INSN))
#define HAL_BYTES_PER_PAGE ((HAL_INSNS_PER_PAGE) * (HAL_BYTES_PER_INSN))

/* utility functions */
#define HAL_DIM(x) (sizeof((x))/sizeof((x[0])))

/* interrupt interface */
#define Hal_IrqDisable() __builtin_disi(0x3FFF)
#define Hal_IrqEnable() __builtin_disi(0x0000)

/* watchdog interface */
#define Hal_WatchdogReset() ClrWdt()
#define Hal_WatchdogEnable() (RCONbits.SWDTEN = 1)
#define Hal_WatchdogDisable() (RCONbits.SWDTEN = 0)

/* GPIO interface */
/* CRESET is active low */
#define Hal_GpioSetReset() (LATAbits.LATA4 = 0)
#define Hal_GpioClrReset() (LATAbits.LATA4 = 1)
#define Hal_GpioEnableOutputReset() (TRISAbits.TRISA4 = 0)
#define Hal_GpioDisableOutputReset() (TRISAbits.TRISA4 = 1)
/* CDONE is active high */
#define Hal_GpioGetDone() (PORTA & _LATA_LATA9_MASK)
#define Hal_GpioDisableOutputDone() (TRISAbits.TRISA9 = 1)
/* SPI_SS is active low */
#define Hal_GpioSetCfgSpiSs() (LATCbits.LATC3 = 0)
#define Hal_GpioClrCfgSpiSs() (LATCbits.LATC3 = 1)
#define Hal_GpioEnableOutputSpiSs() (TRISCbits.TRISC3 = 0)
#define Hal_GpioDisableOutputSpiSs() (TRISCbits.TRISC3 = 1)
/* FBIN0 */
#define Hal_GpioGetFbin0() (PORTBbits.RB9)
#define Hal_GpioEnableOutputFbin0() (TRISBbits.TRISB9 = 0)
#define Hal_GpioDisableOutputFbin0() (TRISBbits.TRISB9 = 1)
/* FBIN1 */
#define Hal_GpioGetFbin1() (PORTCbits.RC6)
#define Hal_GpioEnableOutputFbin1() (TRISCbits.TRISC6 = 0)
#define Hal_GpioDisableOutputFbin1() (TRISCbits.TRISC6 = 1)
/* FBIN2 */
#define Hal_GpioGetFbin2() (PORTCbits.RC7)
#define Hal_GpioEnableOutputFbin2() (TRISCbits.TRISC7 = 0)
#define Hal_GpioDisableOutputFbin2() (TRISCbits.TRISC7 = 1)
/* FBIN3 */
#define Hal_GpioGetFbin3() (PORTCbits.RC8)
#define Hal_GpioEnableOutputFbin3() (TRISCbits.TRISC8 = 0)
#define Hal_GpioDisableOutputFbin3() (TRISCbits.TRISC8 = 1)
/* LED is active low */
#define Hal_GpioSetMode() (LATAbits.LATA8 = 0)
#define Hal_GpioClrMode() (LATAbits.LATA8 = 1)
#define Hal_LedModeOn()   (LATAbits.LATA8 = 0)
#define Hal_LedModeOff()  (LATAbits.LATA8 = 1)
#define Hal_GpioEnableOutputMode() (TRISAbits.TRISA8 = 0)
#define Hal_GpioDisableOutputMode() (TRISAbits.TRISA8 = 1)

/* Timer interface */
#define Hal_Timer1Disable() (T1CON &= ~(_T1CON_TON_MASK))
#define Hal_Timer1Enable() (T1CON |= _T1CON_TON_MASK)
#define Hal_Timer1IsExpired() (IFS0 & _IFS0_T1IF_MASK)
#define Hal_Timer1Clear() (IFS0 &= ~(_IFS0_T1IF_MASK))
#define Hal_Timer1Restart() (TMR1 = 0)

/* SPI interface */
#define Hal_Spi1TxBusy() (SPI1STATL & _SPI1STATL_SPIBUSY_MASK)
#define Hal_SpiSetTxData(x) (SPI1BUFL = (x))
#define Hal_SpiGetRxData() (SPI1BUFL)
#define Hal_Spi1ClrInt() (IFS0 &= ~(_IFS0_SPI1IF_MASK))

/* USB interface */
#define Hal_UsbDisableVbusPort() (TRISB |= _TRISB_TRISB7_MASK)

uint8_t Hal_InitFpga(void);
void Hal_InitPeripherals(void);
void Hal_InitInterrupts(void);
void Hal_SpiInitForFpga(void);
void Hal_Timer1Config(uint16_t uTicks, uint8_t uFlags);
void Hal_IdleTasks(void);
void Hal_EraseFlashSector(uint32_t uBaseAddress);
void Hal_WriteFlashPage(uint32_t uBaseAddress, uint8_t *vuData);

#endif /* HAL_H */
