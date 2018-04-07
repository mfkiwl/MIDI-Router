<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="8.4.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="5" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="MIDI Pushbutton Parts">
<packages>
<package name="MCP23008-SO18">
<description>&lt;b&gt;SMALL OUTLINE INTEGRATED CIRCUIT&lt;/b&gt;&lt;p&gt;
wide body 7.5 mm/JEDEC MO-119AB&lt;br&gt;
Source: http://www.atmel.com/dyn/resources/prod_documents/doc4126.pdf</description>
<wire x1="-9.398" y1="5.842" x2="3.048" y2="5.842" width="0.1998" layer="39"/>
<wire x1="3.048" y1="-5.842" x2="-9.398" y2="-5.842" width="0.1998" layer="39"/>
<wire x1="-9.398" y1="-5.842" x2="-9.398" y2="5.842" width="0.1998" layer="39"/>
<wire x1="2.7" y1="-3.7" x2="-9.05" y2="-3.7" width="0.2032" layer="51"/>
<wire x1="-9.05" y1="-3.7" x2="-9.05" y2="-3.2" width="0.2032" layer="51"/>
<wire x1="-9.05" y1="-3.2" x2="-9.05" y2="3.7" width="0.2032" layer="51"/>
<wire x1="-9.05" y1="3.7" x2="2.7" y2="3.7" width="0.2032" layer="51"/>
<wire x1="2.7" y1="-3.2" x2="-9.05" y2="-3.2" width="0.2032" layer="51"/>
<wire x1="2.7" y1="3.7" x2="2.7" y2="-3.2" width="0.2032" layer="51"/>
<wire x1="2.7" y1="-3.2" x2="2.7" y2="-3.7" width="0.2032" layer="51"/>
<wire x1="3.048" y1="5.842" x2="3.048" y2="-5.842" width="0.1998" layer="39"/>
<smd name="2" x="-6.985" y="-4.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="1" x="-8.255" y="-4.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="3" x="-5.715" y="-4.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="4" x="-4.445" y="-4.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="6" x="-1.905" y="-4.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="9" x="1.905" y="-4.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="5" x="-3.175" y="-4.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="7" x="-0.635" y="-4.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="8" x="0.635" y="-4.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="10" x="1.905" y="4.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="11" x="0.635" y="4.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="12" x="-0.635" y="4.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="13" x="-1.905" y="4.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="14" x="-3.175" y="4.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="15" x="-4.445" y="4.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="16" x="-5.715" y="4.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="17" x="-6.985" y="4.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="18" x="-8.255" y="4.6" dx="0.6" dy="2.2" layer="1"/>
<text x="-6.985" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-6.985" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-8.5001" y1="-5.32" x2="-8.0099" y2="-3.8001" layer="51"/>
<rectangle x1="-7.2301" y1="-5.32" x2="-6.7399" y2="-3.8001" layer="51"/>
<rectangle x1="-5.9601" y1="-5.32" x2="-5.4699" y2="-3.8001" layer="51"/>
<rectangle x1="-4.6901" y1="-5.32" x2="-4.1999" y2="-3.8001" layer="51"/>
<rectangle x1="-3.4201" y1="-5.32" x2="-2.9299" y2="-3.8001" layer="51"/>
<rectangle x1="-2.1501" y1="-5.32" x2="-1.6599" y2="-3.8001" layer="51"/>
<rectangle x1="-0.8801" y1="-5.32" x2="-0.3899" y2="-3.8001" layer="51"/>
<rectangle x1="0.3899" y1="-5.32" x2="0.8801" y2="-3.8001" layer="51"/>
<rectangle x1="1.6599" y1="-5.32" x2="2.1501" y2="-3.8001" layer="51"/>
<rectangle x1="1.6599" y1="3.8001" x2="2.1501" y2="5.32" layer="51"/>
<rectangle x1="0.3899" y1="3.8001" x2="0.8801" y2="5.32" layer="51"/>
<rectangle x1="-0.8801" y1="3.8001" x2="-0.3899" y2="5.32" layer="51"/>
<rectangle x1="-2.1501" y1="3.8001" x2="-1.6599" y2="5.32" layer="51"/>
<rectangle x1="-3.4201" y1="3.8001" x2="-2.9299" y2="5.32" layer="51"/>
<rectangle x1="-4.6901" y1="3.8001" x2="-4.1999" y2="5.32" layer="51"/>
<rectangle x1="-5.9601" y1="3.8001" x2="-5.4699" y2="5.32" layer="51"/>
<rectangle x1="-7.2301" y1="3.8001" x2="-6.7399" y2="5.32" layer="51"/>
<rectangle x1="-8.5001" y1="3.8001" x2="-8.0099" y2="5.32" layer="51"/>
<rectangle x1="-8.9" y1="-3.2" x2="-7.8" y2="3.6" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="MCP23008-SO8">
<pin name="P$1/SCL" x="0" y="-2.54" length="middle"/>
<pin name="P$2/SDA" x="0" y="-7.62" length="middle"/>
<pin name="P$3/A2" x="0" y="-12.7" length="middle"/>
<pin name="P$4/A1" x="0" y="-17.78" length="middle"/>
<pin name="P$5/A0" x="0" y="-22.86" length="middle"/>
<pin name="P$6/!RESET" x="0" y="-27.94" length="middle"/>
<pin name="P$7/NC" x="0" y="-33.02" length="middle"/>
<pin name="P$8/INT" x="0" y="-38.1" length="middle"/>
<pin name="P$9/VSS" x="0" y="-43.18" length="middle"/>
<pin name="P$10/GP0" x="38.1" y="-43.18" length="middle" rot="R180"/>
<pin name="P$11/GP1" x="38.1" y="-38.1" length="middle" rot="R180"/>
<pin name="P$12/GP2" x="38.1" y="-33.02" length="middle" rot="R180"/>
<pin name="P$13/GP3" x="38.1" y="-27.94" length="middle" rot="R180"/>
<pin name="P$14/GP4" x="38.1" y="-22.86" length="middle" rot="R180"/>
<pin name="P$15/GP5" x="38.1" y="-17.78" length="middle" rot="R180"/>
<pin name="P$16/GP6" x="38.1" y="-12.7" length="middle" rot="R180"/>
<pin name="P$17/GP7" x="38.1" y="-7.62" length="middle" rot="R180"/>
<pin name="P$18/VDD" x="38.1" y="-2.54" length="middle" rot="R180"/>
<wire x1="5.08" y1="0" x2="5.08" y2="-45.72" width="0.254" layer="94"/>
<wire x1="5.08" y1="-45.72" x2="33.02" y2="-45.72" width="0.254" layer="94"/>
<wire x1="33.02" y1="-45.72" x2="33.02" y2="0" width="0.254" layer="94"/>
<wire x1="33.02" y1="0" x2="5.08" y2="0" width="0.254" layer="94"/>
<text x="5.08" y="5.08" size="1.27" layer="95">&gt;NAME</text>
<text x="5.08" y="2.54" size="1.27" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="MCP23008">
<gates>
<gate name="G$1" symbol="MCP23008-SO8" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MCP23008-SO18">
<connects>
<connect gate="G$1" pin="P$1/SCL" pad="1"/>
<connect gate="G$1" pin="P$10/GP0" pad="10"/>
<connect gate="G$1" pin="P$11/GP1" pad="11"/>
<connect gate="G$1" pin="P$12/GP2" pad="12"/>
<connect gate="G$1" pin="P$13/GP3" pad="13"/>
<connect gate="G$1" pin="P$14/GP4" pad="14"/>
<connect gate="G$1" pin="P$15/GP5" pad="15"/>
<connect gate="G$1" pin="P$16/GP6" pad="16"/>
<connect gate="G$1" pin="P$17/GP7" pad="17"/>
<connect gate="G$1" pin="P$18/VDD" pad="18"/>
<connect gate="G$1" pin="P$2/SDA" pad="2"/>
<connect gate="G$1" pin="P$3/A2" pad="3"/>
<connect gate="G$1" pin="P$4/A1" pad="4"/>
<connect gate="G$1" pin="P$5/A0" pad="5"/>
<connect gate="G$1" pin="P$6/!RESET" pad="6"/>
<connect gate="G$1" pin="P$7/NC" pad="7"/>
<connect gate="G$1" pin="P$8/INT" pad="8"/>
<connect gate="G$1" pin="P$9/VSS" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$1" library="MIDI Pushbutton Parts" deviceset="MCP23008" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="30.48" y="-12.7"/>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
