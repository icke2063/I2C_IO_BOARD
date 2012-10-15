<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.2">
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
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
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
<layer number="51" name="tDocu" color="6" fill="9" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="atmel">
<description>&lt;b&gt;AVR Devices&lt;/b&gt;&lt;p&gt;
Configurable logic, microcontrollers, nonvolatile memories&lt;p&gt;
Based on the following sources:&lt;p&gt;
&lt;ul&gt;
&lt;li&gt;www.atmel.com
&lt;li&gt;CD-ROM : Configurable Logic Microcontroller Nonvolatile Memory
&lt;li&gt;CadSoft download site, www.cadsoft.de or www.cadsoftusa.com , file at90smcu_v400.zip
&lt;li&gt;avr.lbr
&lt;/ul&gt;
&lt;author&gt;Revised by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="DIL28-3">
<description>&lt;B&gt;Dual In Line&lt;/B&gt; 0.3 inch</description>
<wire x1="-18.542" y1="-0.635" x2="-18.542" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="0.635" x2="-18.542" y2="-0.635" width="0.1524" layer="21" curve="-180"/>
<wire x1="-18.542" y1="-2.794" x2="18.542" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="2.794" x2="-18.542" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="2.794" x2="18.542" y2="2.794" width="0.1524" layer="21"/>
<wire x1="18.542" y1="2.794" x2="18.542" y2="-2.794" width="0.1524" layer="21"/>
<pad name="1" x="-16.51" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-13.97" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-11.43" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="-6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="-3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="-1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="11.43" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="13.97" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="16.51" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="15" x="16.51" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="16" x="13.97" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="17" x="11.43" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="18" x="8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="19" x="6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="20" x="3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="21" x="1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="22" x="-1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="23" x="-3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="24" x="-6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="25" x="-8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="26" x="-11.43" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="27" x="-13.97" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="28" x="-16.51" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-19.2024" y="-2.54" size="1.778" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-15.875" y="-0.635" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="23-I/O-2">
<wire x1="-17.78" y1="30.48" x2="20.32" y2="30.48" width="0.254" layer="94"/>
<wire x1="20.32" y1="30.48" x2="20.32" y2="-33.02" width="0.254" layer="94"/>
<wire x1="20.32" y1="-33.02" x2="-17.78" y2="-33.02" width="0.254" layer="94"/>
<wire x1="-17.78" y1="-33.02" x2="-17.78" y2="30.48" width="0.254" layer="94"/>
<text x="-17.78" y="-35.56" size="1.778" layer="95">&gt;NAME</text>
<text x="-17.78" y="31.75" size="1.778" layer="96">&gt;VALUE</text>
<pin name="PB5(SCK)" x="25.4" y="-30.48" length="middle" rot="R180"/>
<pin name="PB7(XTAL2/TOSC2)" x="-22.86" y="5.08" length="middle"/>
<pin name="PB6(XTAL1/TOSC1)" x="-22.86" y="10.16" length="middle"/>
<pin name="GND@1" x="-22.86" y="-2.54" length="middle" direction="pwr"/>
<pin name="VCC@1" x="-22.86" y="-7.62" length="middle" direction="pwr"/>
<pin name="GND" x="-22.86" y="22.86" length="middle" direction="pwr"/>
<pin name="AREF" x="-22.86" y="20.32" length="middle" direction="pas"/>
<pin name="AVCC" x="-22.86" y="17.78" length="middle" direction="pwr"/>
<pin name="PB4(MISO)" x="25.4" y="-27.94" length="middle" rot="R180"/>
<pin name="PB3(MOSI/OC2)" x="25.4" y="-25.4" length="middle" rot="R180"/>
<pin name="PB2(SS/OC1B)" x="25.4" y="-22.86" length="middle" rot="R180"/>
<pin name="PB1(OC1A)" x="25.4" y="-20.32" length="middle" rot="R180"/>
<pin name="PB0(ICP)" x="25.4" y="-17.78" length="middle" rot="R180"/>
<pin name="PD7(AIN1)" x="25.4" y="-12.7" length="middle" rot="R180"/>
<pin name="PD6(AIN0)" x="25.4" y="-10.16" length="middle" rot="R180"/>
<pin name="PD5(T1)" x="25.4" y="-7.62" length="middle" rot="R180"/>
<pin name="PD4(XCK/T0)" x="25.4" y="-5.08" length="middle" rot="R180"/>
<pin name="PD3(INT1)" x="25.4" y="-2.54" length="middle" rot="R180"/>
<pin name="PD2(INT0)" x="25.4" y="0" length="middle" rot="R180"/>
<pin name="PD1(TXD)" x="25.4" y="2.54" length="middle" rot="R180"/>
<pin name="PD0(RXD)" x="25.4" y="5.08" length="middle" rot="R180"/>
<pin name="PC5(ADC5/SCL)" x="25.4" y="15.24" length="middle" rot="R180"/>
<pin name="PC4(ADC4/SDA)" x="25.4" y="17.78" length="middle" rot="R180"/>
<pin name="PC3(ADC3)" x="25.4" y="20.32" length="middle" rot="R180"/>
<pin name="PC2(ADC2)" x="25.4" y="22.86" length="middle" rot="R180"/>
<pin name="PC1(ADC1)" x="25.4" y="25.4" length="middle" rot="R180"/>
<pin name="PC0(ADC0)" x="25.4" y="27.94" length="middle" rot="R180"/>
<pin name="PC6(/RESET)" x="-22.86" y="27.94" length="middle" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MEGA8-P" prefix="IC">
<description>&lt;b&gt;MICROCONTROLLER&lt;/b&gt;&lt;p&gt;
8 Kbytes FLASH, 1 kbytes SRAM, 512 bytes EEPROM, USART, 4-channel 10 bit ADC, 2-channel 8 bit ADC&lt;br&gt;
Pin compatible with Atmega48, ATMega88, ATMega168&lt;br&gt;
Source: avr.lbr</description>
<gates>
<gate name="G$1" symbol="23-I/O-2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DIL28-3">
<connects>
<connect gate="G$1" pin="AREF" pad="21"/>
<connect gate="G$1" pin="AVCC" pad="20"/>
<connect gate="G$1" pin="GND" pad="22"/>
<connect gate="G$1" pin="GND@1" pad="8"/>
<connect gate="G$1" pin="PB0(ICP)" pad="14"/>
<connect gate="G$1" pin="PB1(OC1A)" pad="15"/>
<connect gate="G$1" pin="PB2(SS/OC1B)" pad="16"/>
<connect gate="G$1" pin="PB3(MOSI/OC2)" pad="17"/>
<connect gate="G$1" pin="PB4(MISO)" pad="18"/>
<connect gate="G$1" pin="PB5(SCK)" pad="19"/>
<connect gate="G$1" pin="PB6(XTAL1/TOSC1)" pad="9"/>
<connect gate="G$1" pin="PB7(XTAL2/TOSC2)" pad="10"/>
<connect gate="G$1" pin="PC0(ADC0)" pad="23"/>
<connect gate="G$1" pin="PC1(ADC1)" pad="24"/>
<connect gate="G$1" pin="PC2(ADC2)" pad="25"/>
<connect gate="G$1" pin="PC3(ADC3)" pad="26"/>
<connect gate="G$1" pin="PC4(ADC4/SDA)" pad="27"/>
<connect gate="G$1" pin="PC5(ADC5/SCL)" pad="28"/>
<connect gate="G$1" pin="PC6(/RESET)" pad="1"/>
<connect gate="G$1" pin="PD0(RXD)" pad="2"/>
<connect gate="G$1" pin="PD1(TXD)" pad="3"/>
<connect gate="G$1" pin="PD2(INT0)" pad="4"/>
<connect gate="G$1" pin="PD3(INT1)" pad="5"/>
<connect gate="G$1" pin="PD4(XCK/T0)" pad="6"/>
<connect gate="G$1" pin="PD5(T1)" pad="11"/>
<connect gate="G$1" pin="PD6(AIN0)" pad="12"/>
<connect gate="G$1" pin="PD7(AIN1)" pad="13"/>
<connect gate="G$1" pin="VCC@1" pad="7"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pinhead">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1X05">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-0.635" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="0.635" x2="-6.35" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="-0.635" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-1.27" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="0.635" x2="6.35" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="0" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="5.08" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-6.4262" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.35" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<rectangle x1="-2.794" y1="-0.254" x2="-2.286" y2="0.254" layer="51"/>
<rectangle x1="-5.334" y1="-0.254" x2="-4.826" y2="0.254" layer="51"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
</package>
<package name="1X05/90">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-6.35" y1="-1.905" x2="-3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="0.635" x2="-6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="6.985" x2="-5.08" y2="1.27" width="0.762" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="-1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="6.985" x2="-2.54" y2="1.27" width="0.762" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="6.985" x2="0" y2="1.27" width="0.762" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="6.985" x2="2.54" y2="1.27" width="0.762" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-1.905" x2="6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="0.635" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="6.985" x2="5.08" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-5.08" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-2.54" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="0" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="2.54" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="5.08" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-6.985" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="8.255" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-5.461" y1="0.635" x2="-4.699" y2="1.143" layer="21"/>
<rectangle x1="-2.921" y1="0.635" x2="-2.159" y2="1.143" layer="21"/>
<rectangle x1="-0.381" y1="0.635" x2="0.381" y2="1.143" layer="21"/>
<rectangle x1="2.159" y1="0.635" x2="2.921" y2="1.143" layer="21"/>
<rectangle x1="4.699" y1="0.635" x2="5.461" y2="1.143" layer="21"/>
<rectangle x1="-5.461" y1="-2.921" x2="-4.699" y2="-1.905" layer="21"/>
<rectangle x1="-2.921" y1="-2.921" x2="-2.159" y2="-1.905" layer="21"/>
<rectangle x1="-0.381" y1="-2.921" x2="0.381" y2="-1.905" layer="21"/>
<rectangle x1="2.159" y1="-2.921" x2="2.921" y2="-1.905" layer="21"/>
<rectangle x1="4.699" y1="-2.921" x2="5.461" y2="-1.905" layer="21"/>
</package>
<package name="1X03">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-3.175" y1="1.27" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="0" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-3.8862" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<rectangle x1="-2.794" y1="-0.254" x2="-2.286" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
</package>
<package name="1X03/90">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-3.81" y1="-1.905" x2="-1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="6.985" x2="-2.54" y2="1.27" width="0.762" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="6.985" x2="0" y2="1.27" width="0.762" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="6.985" x2="2.54" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-2.54" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="0" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="2.54" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-4.445" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="5.715" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-2.921" y1="0.635" x2="-2.159" y2="1.143" layer="21"/>
<rectangle x1="-0.381" y1="0.635" x2="0.381" y2="1.143" layer="21"/>
<rectangle x1="2.159" y1="0.635" x2="2.921" y2="1.143" layer="21"/>
<rectangle x1="-2.921" y1="-2.921" x2="-2.159" y2="-1.905" layer="21"/>
<rectangle x1="-0.381" y1="-2.921" x2="0.381" y2="-1.905" layer="21"/>
<rectangle x1="2.159" y1="-2.921" x2="2.921" y2="-1.905" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="PINHD5">
<wire x1="-6.35" y1="-7.62" x2="1.27" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="1.27" y2="7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="7.62" x2="-6.35" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="7.62" x2="-6.35" y2="-7.62" width="0.4064" layer="94"/>
<text x="-6.35" y="8.255" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="3" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="5" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
<symbol name="PINHD3">
<wire x1="-6.35" y1="-5.08" x2="1.27" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="1.27" y2="5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="5.08" x2="-6.35" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="5.08" x2="-6.35" y2="-5.08" width="0.4064" layer="94"/>
<text x="-6.35" y="5.715" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="3" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-1X5" prefix="JP" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINHD5" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X05">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="/90" package="1X05/90">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PINHD-1X3" prefix="JP" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINHD3" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X03">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="/90" package="1X03/90">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-wago-500">
<description>&lt;b&gt;Wago Screw Clamps&lt;/b&gt;&lt;p&gt;
Grid 5.00 mm&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="W237-102">
<description>&lt;b&gt;WAGO SCREW CLAMP&lt;/b&gt;</description>
<wire x1="-3.491" y1="-2.286" x2="-1.484" y2="-0.279" width="0.254" layer="51"/>
<wire x1="1.488" y1="-2.261" x2="3.469" y2="-0.254" width="0.254" layer="51"/>
<wire x1="-4.989" y1="-5.461" x2="4.993" y2="-5.461" width="0.1524" layer="21"/>
<wire x1="4.993" y1="3.734" x2="4.993" y2="3.531" width="0.1524" layer="21"/>
<wire x1="4.993" y1="3.734" x2="-4.989" y2="3.734" width="0.1524" layer="21"/>
<wire x1="-4.989" y1="-5.461" x2="-4.989" y2="-3.073" width="0.1524" layer="21"/>
<wire x1="-4.989" y1="-3.073" x2="-3.389" y2="-3.073" width="0.1524" layer="21"/>
<wire x1="-3.389" y1="-3.073" x2="-1.611" y2="-3.073" width="0.1524" layer="51"/>
<wire x1="-1.611" y1="-3.073" x2="1.615" y2="-3.073" width="0.1524" layer="21"/>
<wire x1="3.393" y1="-3.073" x2="4.993" y2="-3.073" width="0.1524" layer="21"/>
<wire x1="-4.989" y1="-3.073" x2="-4.989" y2="3.531" width="0.1524" layer="21"/>
<wire x1="4.993" y1="-3.073" x2="4.993" y2="-5.461" width="0.1524" layer="21"/>
<wire x1="-4.989" y1="3.531" x2="4.993" y2="3.531" width="0.1524" layer="21"/>
<wire x1="-4.989" y1="3.531" x2="-4.989" y2="3.734" width="0.1524" layer="21"/>
<wire x1="4.993" y1="3.531" x2="4.993" y2="-3.073" width="0.1524" layer="21"/>
<wire x1="1.615" y1="-3.073" x2="3.393" y2="-3.073" width="0.1524" layer="51"/>
<circle x="-2.5" y="-1.27" radius="1.4986" width="0.1524" layer="51"/>
<circle x="-2.5" y="2.2098" radius="0.508" width="0.1524" layer="21"/>
<circle x="2.5038" y="-1.27" radius="1.4986" width="0.1524" layer="51"/>
<circle x="2.5038" y="2.2098" radius="0.508" width="0.1524" layer="21"/>
<pad name="1" x="-2.5" y="-1.27" drill="1.1938" shape="long" rot="R90"/>
<pad name="2" x="2.5" y="-1.27" drill="1.1938" shape="long" rot="R90"/>
<text x="-5.04" y="-7.62" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-3.8462" y="-5.0038" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.532" y="0.635" size="1.27" layer="21" ratio="10">1</text>
<text x="0.421" y="0.635" size="1.27" layer="21" ratio="10">2</text>
</package>
</packages>
<symbols>
<symbol name="KL">
<circle x="1.27" y="0" radius="1.27" width="0.254" layer="94"/>
<text x="0" y="0.889" size="1.778" layer="95" rot="R180">&gt;NAME</text>
<pin name="KL" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="KL+V">
<circle x="1.27" y="0" radius="1.27" width="0.254" layer="94"/>
<text x="-2.54" y="-3.683" size="1.778" layer="96">&gt;VALUE</text>
<text x="0" y="0.889" size="1.778" layer="95" rot="R180">&gt;NAME</text>
<pin name="KL" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="W237-102" prefix="X" uservalue="yes">
<description>&lt;b&gt;WAGO SCREW CLAMP&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="KL" x="0" y="5.08" addlevel="always"/>
<gate name="-2" symbol="KL+V" x="0" y="0" addlevel="always"/>
</gates>
<devices>
<device name="" package="W237-102">
<connects>
<connect gate="-1" pin="KL" pad="1"/>
<connect gate="-2" pin="KL" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="237-102" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="70K9898" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="+5V">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+5V" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="+5V" x="0" y="0"/>
</gates>
<devices>
<device name="">
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
<part name="IC1" library="atmel" deviceset="MEGA8-P" device=""/>
<part name="PH10_I" library="pinhead" deviceset="PINHD-1X5" device=""/>
<part name="X1" library="con-wago-500" deviceset="W237-102" device=""/>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="P+1" library="supply1" deviceset="+5V" device=""/>
<part name="PH9_I" library="pinhead" deviceset="PINHD-1X5" device=""/>
<part name="PH8_I" library="pinhead" deviceset="PINHD-1X5" device=""/>
<part name="PH0_I" library="pinhead" deviceset="PINHD-1X5" device=""/>
<part name="PH5_I" library="pinhead" deviceset="PINHD-1X5" device=""/>
<part name="PH11_I" library="pinhead" deviceset="PINHD-1X5" device=""/>
<part name="PH6_I" library="pinhead" deviceset="PINHD-1X5" device=""/>
<part name="PH1_I" library="pinhead" deviceset="PINHD-1X5" device=""/>
<part name="PH7_I" library="pinhead" deviceset="PINHD-1X5" device=""/>
<part name="PH2_I" library="pinhead" deviceset="PINHD-1X5" device=""/>
<part name="PH3_I" library="pinhead" deviceset="PINHD-1X5" device=""/>
<part name="PH4_I" library="pinhead" deviceset="PINHD-1X5" device=""/>
<part name="X3" library="con-wago-500" deviceset="W237-102" device=""/>
<part name="X4" library="con-wago-500" deviceset="W237-102" device=""/>
<part name="X5" library="con-wago-500" deviceset="W237-102" device=""/>
<part name="X6" library="con-wago-500" deviceset="W237-102" device=""/>
<part name="X7" library="con-wago-500" deviceset="W237-102" device=""/>
<part name="X8" library="con-wago-500" deviceset="W237-102" device=""/>
<part name="PH6_E" library="pinhead" deviceset="PINHD-1X3" device=""/>
<part name="PH7_E" library="pinhead" deviceset="PINHD-1X3" device=""/>
<part name="PH8_E" library="pinhead" deviceset="PINHD-1X3" device=""/>
<part name="PH9_E" library="pinhead" deviceset="PINHD-1X3" device=""/>
<part name="PH10_E" library="pinhead" deviceset="PINHD-1X3" device=""/>
<part name="PH11_E" library="pinhead" deviceset="PINHD-1X3" device=""/>
<part name="PH0_E" library="pinhead" deviceset="PINHD-1X3" device=""/>
<part name="PH1_E" library="pinhead" deviceset="PINHD-1X3" device=""/>
<part name="PH2_E" library="pinhead" deviceset="PINHD-1X3" device=""/>
<part name="PH3_E" library="pinhead" deviceset="PINHD-1X3" device=""/>
<part name="PH4_E" library="pinhead" deviceset="PINHD-1X3" device=""/>
<part name="PH5_E" library="pinhead" deviceset="PINHD-1X3" device=""/>
<part name="X10" library="con-wago-500" deviceset="W237-102" device=""/>
<part name="X11" library="con-wago-500" deviceset="W237-102" device=""/>
<part name="X12" library="con-wago-500" deviceset="W237-102" device=""/>
<part name="X13" library="con-wago-500" deviceset="W237-102" device=""/>
<part name="X14" library="con-wago-500" deviceset="W237-102" device=""/>
<part name="X15" library="con-wago-500" deviceset="W237-102" device=""/>
<part name="GND2" library="supply1" deviceset="GND" device=""/>
<part name="GND3" library="supply1" deviceset="GND" device=""/>
<part name="GND4" library="supply1" deviceset="GND" device=""/>
<part name="GND5" library="supply1" deviceset="GND" device=""/>
<part name="GND6" library="supply1" deviceset="GND" device=""/>
<part name="GND7" library="supply1" deviceset="GND" device=""/>
<part name="GND8" library="supply1" deviceset="GND" device=""/>
<part name="GND9" library="supply1" deviceset="GND" device=""/>
<part name="GND10" library="supply1" deviceset="GND" device=""/>
<part name="GND11" library="supply1" deviceset="GND" device=""/>
<part name="GND12" library="supply1" deviceset="GND" device=""/>
<part name="GND13" library="supply1" deviceset="GND" device=""/>
<part name="P+2" library="supply1" deviceset="+5V" device=""/>
<part name="P+3" library="supply1" deviceset="+5V" device=""/>
<part name="P+4" library="supply1" deviceset="+5V" device=""/>
<part name="P+5" library="supply1" deviceset="+5V" device=""/>
<part name="P+6" library="supply1" deviceset="+5V" device=""/>
<part name="P+7" library="supply1" deviceset="+5V" device=""/>
<part name="P+8" library="supply1" deviceset="+5V" device=""/>
<part name="P+9" library="supply1" deviceset="+5V" device=""/>
<part name="P+10" library="supply1" deviceset="+5V" device=""/>
<part name="P+11" library="supply1" deviceset="+5V" device=""/>
<part name="P+12" library="supply1" deviceset="+5V" device=""/>
<part name="P+13" library="supply1" deviceset="+5V" device=""/>
<part name="P+14" library="supply1" deviceset="+5V" device=""/>
<part name="P+15" library="supply1" deviceset="+5V" device=""/>
<part name="P+16" library="supply1" deviceset="+5V" device=""/>
<part name="P+17" library="supply1" deviceset="+5V" device=""/>
<part name="P+18" library="supply1" deviceset="+5V" device=""/>
<part name="P+19" library="supply1" deviceset="+5V" device=""/>
<part name="P+20" library="supply1" deviceset="+5V" device=""/>
<part name="P+21" library="supply1" deviceset="+5V" device=""/>
<part name="P+22" library="supply1" deviceset="+5V" device=""/>
<part name="P+23" library="supply1" deviceset="+5V" device=""/>
<part name="P+24" library="supply1" deviceset="+5V" device=""/>
<part name="P+25" library="supply1" deviceset="+5V" device=""/>
<part name="GND14" library="supply1" deviceset="GND" device=""/>
<part name="GND15" library="supply1" deviceset="GND" device=""/>
<part name="GND16" library="supply1" deviceset="GND" device=""/>
<part name="GND17" library="supply1" deviceset="GND" device=""/>
<part name="GND18" library="supply1" deviceset="GND" device=""/>
<part name="GND19" library="supply1" deviceset="GND" device=""/>
<part name="GND20" library="supply1" deviceset="GND" device=""/>
<part name="GND21" library="supply1" deviceset="GND" device=""/>
<part name="GND22" library="supply1" deviceset="GND" device=""/>
<part name="GND23" library="supply1" deviceset="GND" device=""/>
<part name="GND24" library="supply1" deviceset="GND" device=""/>
<part name="GND25" library="supply1" deviceset="GND" device=""/>
<part name="X9" library="con-wago-500" deviceset="W237-102" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="IC1" gate="G$1" x="17.78" y="50.8"/>
<instance part="PH10_I" gate="A" x="170.18" y="-175.26" rot="R270"/>
<instance part="X1" gate="-1" x="-33.02" y="48.26"/>
<instance part="X1" gate="-2" x="-33.02" y="43.18"/>
<instance part="GND1" gate="1" x="-15.24" y="35.56"/>
<instance part="P+1" gate="1" x="-10.16" y="35.56" rot="R180"/>
<instance part="PH9_I" gate="A" x="144.78" y="-175.26" rot="R270"/>
<instance part="PH8_I" gate="A" x="119.38" y="-175.26" rot="R270"/>
<instance part="PH0_I" gate="A" x="68.58" y="-121.92" rot="R90"/>
<instance part="PH5_I" gate="A" x="195.58" y="-121.92" rot="R90"/>
<instance part="PH11_I" gate="A" x="195.58" y="-175.26" rot="R270"/>
<instance part="PH6_I" gate="A" x="68.58" y="-175.26" rot="R270"/>
<instance part="PH1_I" gate="A" x="93.98" y="-121.92" rot="R90"/>
<instance part="PH7_I" gate="A" x="93.98" y="-175.26" rot="R270"/>
<instance part="PH2_I" gate="A" x="119.38" y="-121.92" rot="R90"/>
<instance part="PH3_I" gate="A" x="144.78" y="-121.92" rot="R90"/>
<instance part="PH4_I" gate="A" x="170.18" y="-121.92" rot="R90"/>
<instance part="X3" gate="-1" x="66.04" y="-200.66" rot="R90"/>
<instance part="X3" gate="-2" x="71.12" y="-200.66" rot="R90"/>
<instance part="X4" gate="-1" x="91.44" y="-200.66" rot="R90"/>
<instance part="X4" gate="-2" x="96.52" y="-200.66" rot="R90"/>
<instance part="X5" gate="-1" x="116.84" y="-200.66" rot="R90"/>
<instance part="X5" gate="-2" x="121.92" y="-200.66" rot="R90"/>
<instance part="X6" gate="-1" x="142.24" y="-200.66" rot="R90"/>
<instance part="X6" gate="-2" x="147.32" y="-200.66" rot="R90"/>
<instance part="X7" gate="-1" x="167.64" y="-200.66" rot="R90"/>
<instance part="X7" gate="-2" x="172.72" y="-200.66" rot="R90"/>
<instance part="X8" gate="-1" x="193.04" y="-200.66" rot="R90"/>
<instance part="X8" gate="-2" x="198.12" y="-200.66" rot="R90"/>
<instance part="PH6_E" gate="A" x="68.58" y="-185.42" rot="R90"/>
<instance part="PH7_E" gate="A" x="93.98" y="-185.42" rot="R90"/>
<instance part="PH8_E" gate="A" x="119.38" y="-185.42" rot="R90"/>
<instance part="PH9_E" gate="A" x="144.78" y="-185.42" rot="R90"/>
<instance part="PH10_E" gate="A" x="170.18" y="-185.42" rot="R90"/>
<instance part="PH11_E" gate="A" x="195.58" y="-185.42" rot="R90"/>
<instance part="PH0_E" gate="A" x="68.58" y="-111.76" rot="R270"/>
<instance part="PH1_E" gate="A" x="93.98" y="-111.76" rot="R270"/>
<instance part="PH2_E" gate="A" x="119.38" y="-111.76" rot="R270"/>
<instance part="PH3_E" gate="A" x="144.78" y="-111.76" rot="R270"/>
<instance part="PH4_E" gate="A" x="170.18" y="-111.76" rot="R270"/>
<instance part="PH5_E" gate="A" x="195.58" y="-111.76" rot="R270"/>
<instance part="X10" gate="-1" x="71.12" y="-96.52" rot="R270"/>
<instance part="X10" gate="-2" x="66.04" y="-96.52" rot="R270"/>
<instance part="X11" gate="-1" x="96.52" y="-96.52" rot="R270"/>
<instance part="X11" gate="-2" x="91.44" y="-96.52" rot="R270"/>
<instance part="X12" gate="-1" x="121.92" y="-96.52" rot="R270"/>
<instance part="X12" gate="-2" x="116.84" y="-96.52" rot="R270"/>
<instance part="X13" gate="-1" x="147.32" y="-96.52" rot="R270"/>
<instance part="X13" gate="-2" x="142.24" y="-96.52" rot="R270"/>
<instance part="X14" gate="-1" x="172.72" y="-96.52" rot="R270"/>
<instance part="X14" gate="-2" x="167.64" y="-96.52" rot="R270"/>
<instance part="X15" gate="-1" x="198.12" y="-96.52" rot="R270"/>
<instance part="X15" gate="-2" x="193.04" y="-96.52" rot="R270"/>
<instance part="GND2" gate="1" x="172.72" y="-157.48" rot="R180"/>
<instance part="GND3" gate="1" x="147.32" y="-157.48" rot="R180"/>
<instance part="GND4" gate="1" x="121.92" y="-157.48" rot="R180"/>
<instance part="GND5" gate="1" x="66.04" y="-139.7"/>
<instance part="GND6" gate="1" x="193.04" y="-139.7"/>
<instance part="GND7" gate="1" x="198.12" y="-157.48" rot="R180"/>
<instance part="GND8" gate="1" x="71.12" y="-157.48" rot="R180"/>
<instance part="GND9" gate="1" x="91.44" y="-139.7"/>
<instance part="GND10" gate="1" x="96.52" y="-157.48" rot="R180"/>
<instance part="GND11" gate="1" x="116.84" y="-139.7"/>
<instance part="GND12" gate="1" x="142.24" y="-139.7"/>
<instance part="GND13" gate="1" x="167.64" y="-139.7"/>
<instance part="P+2" gate="1" x="63.5" y="-162.56"/>
<instance part="P+3" gate="1" x="73.66" y="-162.56"/>
<instance part="P+4" gate="1" x="99.06" y="-134.62" rot="R180"/>
<instance part="P+5" gate="1" x="88.9" y="-134.62" rot="R180"/>
<instance part="P+6" gate="1" x="88.9" y="-162.56"/>
<instance part="P+7" gate="1" x="99.06" y="-162.56"/>
<instance part="P+8" gate="1" x="124.46" y="-134.62" rot="R180"/>
<instance part="P+9" gate="1" x="114.3" y="-134.62" rot="R180"/>
<instance part="P+10" gate="1" x="149.86" y="-134.62" rot="R180"/>
<instance part="P+11" gate="1" x="139.7" y="-134.62" rot="R180"/>
<instance part="P+12" gate="1" x="175.26" y="-134.62" rot="R180"/>
<instance part="P+13" gate="1" x="165.1" y="-134.62" rot="R180"/>
<instance part="P+14" gate="1" x="175.26" y="-162.56"/>
<instance part="P+15" gate="1" x="149.86" y="-162.56"/>
<instance part="P+16" gate="1" x="139.7" y="-162.56"/>
<instance part="P+17" gate="1" x="124.46" y="-162.56"/>
<instance part="P+18" gate="1" x="114.3" y="-162.56"/>
<instance part="P+19" gate="1" x="63.5" y="-134.62" rot="R180"/>
<instance part="P+20" gate="1" x="73.66" y="-134.62" rot="R180"/>
<instance part="P+21" gate="1" x="190.5" y="-134.62" rot="R180"/>
<instance part="P+22" gate="1" x="200.66" y="-134.62" rot="R180"/>
<instance part="P+23" gate="1" x="190.5" y="-162.56"/>
<instance part="P+24" gate="1" x="200.66" y="-162.56"/>
<instance part="P+25" gate="1" x="165.1" y="-162.56"/>
<instance part="GND14" gate="1" x="167.64" y="-157.48" rot="R180"/>
<instance part="GND15" gate="1" x="142.24" y="-157.48" rot="R180"/>
<instance part="GND16" gate="1" x="116.84" y="-157.48" rot="R180"/>
<instance part="GND17" gate="1" x="71.12" y="-139.7"/>
<instance part="GND18" gate="1" x="198.12" y="-139.7"/>
<instance part="GND19" gate="1" x="193.04" y="-157.48" rot="R180"/>
<instance part="GND20" gate="1" x="66.04" y="-157.48" rot="R180"/>
<instance part="GND21" gate="1" x="96.52" y="-139.7"/>
<instance part="GND22" gate="1" x="91.44" y="-157.48" rot="R180"/>
<instance part="GND23" gate="1" x="121.92" y="-139.7"/>
<instance part="GND24" gate="1" x="147.32" y="-139.7"/>
<instance part="GND25" gate="1" x="172.72" y="-139.7"/>
<instance part="X9" gate="-1" x="-35.56" y="71.12"/>
<instance part="X9" gate="-2" x="-35.56" y="66.04"/>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="PH10_I" gate="A" pin="2"/>
<wire x1="172.72" y1="-160.02" x2="172.72" y2="-172.72" width="0.1524" layer="91"/>
<pinref part="GND2" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="PH9_I" gate="A" pin="2"/>
<wire x1="147.32" y1="-160.02" x2="147.32" y2="-172.72" width="0.1524" layer="91"/>
<pinref part="GND3" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="PH8_I" gate="A" pin="2"/>
<wire x1="121.92" y1="-160.02" x2="121.92" y2="-172.72" width="0.1524" layer="91"/>
<pinref part="GND4" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="PH0_I" gate="A" pin="2"/>
<wire x1="66.04" y1="-137.16" x2="66.04" y2="-124.46" width="0.1524" layer="91"/>
<pinref part="GND5" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="PH5_I" gate="A" pin="2"/>
<wire x1="193.04" y1="-137.16" x2="193.04" y2="-124.46" width="0.1524" layer="91"/>
<pinref part="GND6" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="PH11_I" gate="A" pin="2"/>
<wire x1="198.12" y1="-160.02" x2="198.12" y2="-172.72" width="0.1524" layer="91"/>
<pinref part="GND7" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="PH6_I" gate="A" pin="2"/>
<wire x1="71.12" y1="-172.72" x2="71.12" y2="-160.02" width="0.1524" layer="91"/>
<pinref part="GND8" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="PH1_I" gate="A" pin="2"/>
<wire x1="91.44" y1="-124.46" x2="91.44" y2="-137.16" width="0.1524" layer="91"/>
<pinref part="GND9" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="PH7_I" gate="A" pin="2"/>
<wire x1="96.52" y1="-172.72" x2="96.52" y2="-160.02" width="0.1524" layer="91"/>
<pinref part="GND10" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="PH2_I" gate="A" pin="2"/>
<wire x1="116.84" y1="-124.46" x2="116.84" y2="-137.16" width="0.1524" layer="91"/>
<pinref part="GND11" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="PH3_I" gate="A" pin="2"/>
<wire x1="142.24" y1="-124.46" x2="142.24" y2="-137.16" width="0.1524" layer="91"/>
<pinref part="GND12" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="PH4_I" gate="A" pin="2"/>
<wire x1="167.64" y1="-124.46" x2="167.64" y2="-137.16" width="0.1524" layer="91"/>
<pinref part="GND13" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GND14" gate="1" pin="GND"/>
<pinref part="PH10_I" gate="A" pin="4"/>
<wire x1="167.64" y1="-160.02" x2="167.64" y2="-172.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND19" gate="1" pin="GND"/>
<pinref part="PH11_I" gate="A" pin="4"/>
<wire x1="193.04" y1="-160.02" x2="193.04" y2="-172.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND18" gate="1" pin="GND"/>
<pinref part="PH5_I" gate="A" pin="4"/>
<wire x1="198.12" y1="-137.16" x2="198.12" y2="-124.46" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND17" gate="1" pin="GND"/>
<pinref part="PH0_I" gate="A" pin="4"/>
<wire x1="71.12" y1="-137.16" x2="71.12" y2="-124.46" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND16" gate="1" pin="GND"/>
<pinref part="PH8_I" gate="A" pin="4"/>
<wire x1="116.84" y1="-160.02" x2="116.84" y2="-172.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND15" gate="1" pin="GND"/>
<pinref part="PH9_I" gate="A" pin="4"/>
<wire x1="142.24" y1="-160.02" x2="142.24" y2="-172.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="PH6_I" gate="A" pin="4"/>
<pinref part="GND20" gate="1" pin="GND"/>
<wire x1="66.04" y1="-172.72" x2="66.04" y2="-160.02" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="PH1_I" gate="A" pin="4"/>
<pinref part="GND21" gate="1" pin="GND"/>
<wire x1="96.52" y1="-124.46" x2="96.52" y2="-137.16" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="PH7_I" gate="A" pin="4"/>
<pinref part="GND22" gate="1" pin="GND"/>
<wire x1="91.44" y1="-172.72" x2="91.44" y2="-160.02" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="PH2_I" gate="A" pin="4"/>
<pinref part="GND23" gate="1" pin="GND"/>
<wire x1="121.92" y1="-124.46" x2="121.92" y2="-137.16" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="PH3_I" gate="A" pin="4"/>
<pinref part="GND24" gate="1" pin="GND"/>
<wire x1="147.32" y1="-124.46" x2="147.32" y2="-137.16" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="PH4_I" gate="A" pin="4"/>
<pinref part="GND25" gate="1" pin="GND"/>
<wire x1="172.72" y1="-124.46" x2="172.72" y2="-137.16" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="GND@1"/>
<pinref part="X1" gate="-1" pin="KL"/>
<wire x1="-27.94" y1="48.26" x2="-15.24" y2="48.26" width="0.1524" layer="91"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="-15.24" y1="48.26" x2="-5.08" y2="48.26" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="38.1" x2="-15.24" y2="48.26" width="0.1524" layer="91"/>
<junction x="-15.24" y="48.26"/>
</segment>
</net>
<net name="+5V" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="VCC@1"/>
<pinref part="P+1" gate="1" pin="+5V"/>
<wire x1="-10.16" y1="43.18" x2="-5.08" y2="43.18" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="38.1" x2="-10.16" y2="43.18" width="0.1524" layer="91"/>
<pinref part="X1" gate="-2" pin="KL"/>
<wire x1="-27.94" y1="43.18" x2="-10.16" y2="43.18" width="0.1524" layer="91"/>
<junction x="-10.16" y="43.18"/>
</segment>
<segment>
<pinref part="PH6_I" gate="A" pin="5"/>
<wire x1="63.5" y1="-172.72" x2="63.5" y2="-165.1" width="0.1524" layer="91"/>
<pinref part="P+2" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="PH6_I" gate="A" pin="1"/>
<wire x1="73.66" y1="-172.72" x2="73.66" y2="-165.1" width="0.1524" layer="91"/>
<pinref part="P+3" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="PH1_I" gate="A" pin="5"/>
<wire x1="99.06" y1="-124.46" x2="99.06" y2="-132.08" width="0.1524" layer="91"/>
<pinref part="P+4" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="PH1_I" gate="A" pin="1"/>
<wire x1="88.9" y1="-124.46" x2="88.9" y2="-132.08" width="0.1524" layer="91"/>
<pinref part="P+5" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="PH7_I" gate="A" pin="5"/>
<wire x1="88.9" y1="-172.72" x2="88.9" y2="-165.1" width="0.1524" layer="91"/>
<pinref part="P+6" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="PH7_I" gate="A" pin="1"/>
<wire x1="99.06" y1="-172.72" x2="99.06" y2="-165.1" width="0.1524" layer="91"/>
<pinref part="P+7" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="PH2_I" gate="A" pin="5"/>
<wire x1="124.46" y1="-124.46" x2="124.46" y2="-132.08" width="0.1524" layer="91"/>
<pinref part="P+8" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="PH2_I" gate="A" pin="1"/>
<wire x1="114.3" y1="-124.46" x2="114.3" y2="-132.08" width="0.1524" layer="91"/>
<pinref part="P+9" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="PH3_I" gate="A" pin="5"/>
<wire x1="149.86" y1="-124.46" x2="149.86" y2="-132.08" width="0.1524" layer="91"/>
<pinref part="P+10" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="PH3_I" gate="A" pin="1"/>
<wire x1="139.7" y1="-132.08" x2="139.7" y2="-124.46" width="0.1524" layer="91"/>
<pinref part="P+11" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="PH4_I" gate="A" pin="5"/>
<wire x1="175.26" y1="-124.46" x2="175.26" y2="-132.08" width="0.1524" layer="91"/>
<pinref part="P+12" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="PH4_I" gate="A" pin="1"/>
<wire x1="165.1" y1="-132.08" x2="165.1" y2="-124.46" width="0.1524" layer="91"/>
<pinref part="P+13" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="PH10_I" gate="A" pin="1"/>
<wire x1="175.26" y1="-172.72" x2="175.26" y2="-165.1" width="0.1524" layer="91"/>
<pinref part="P+14" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="PH9_I" gate="A" pin="1"/>
<wire x1="149.86" y1="-172.72" x2="149.86" y2="-165.1" width="0.1524" layer="91"/>
<pinref part="P+15" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="PH9_I" gate="A" pin="5"/>
<wire x1="139.7" y1="-165.1" x2="139.7" y2="-172.72" width="0.1524" layer="91"/>
<pinref part="P+16" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="PH8_I" gate="A" pin="1"/>
<wire x1="124.46" y1="-172.72" x2="124.46" y2="-165.1" width="0.1524" layer="91"/>
<pinref part="P+17" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="PH8_I" gate="A" pin="5"/>
<wire x1="114.3" y1="-165.1" x2="114.3" y2="-172.72" width="0.1524" layer="91"/>
<pinref part="P+18" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="PH0_I" gate="A" pin="1"/>
<wire x1="63.5" y1="-124.46" x2="63.5" y2="-132.08" width="0.1524" layer="91"/>
<pinref part="P+19" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="PH0_I" gate="A" pin="5"/>
<wire x1="73.66" y1="-132.08" x2="73.66" y2="-124.46" width="0.1524" layer="91"/>
<pinref part="P+20" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="PH5_I" gate="A" pin="1"/>
<wire x1="190.5" y1="-124.46" x2="190.5" y2="-132.08" width="0.1524" layer="91"/>
<pinref part="P+21" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="PH5_I" gate="A" pin="5"/>
<wire x1="200.66" y1="-132.08" x2="200.66" y2="-124.46" width="0.1524" layer="91"/>
<pinref part="P+22" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="PH11_I" gate="A" pin="5"/>
<wire x1="190.5" y1="-165.1" x2="190.5" y2="-172.72" width="0.1524" layer="91"/>
<pinref part="P+23" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="P+25" gate="1" pin="+5V"/>
<pinref part="PH10_I" gate="A" pin="5"/>
<wire x1="165.1" y1="-165.1" x2="165.1" y2="-172.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P+24" gate="1" pin="+5V"/>
<pinref part="PH11_I" gate="A" pin="1"/>
<wire x1="200.66" y1="-165.1" x2="200.66" y2="-172.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="IO1" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="PB6(XTAL1/TOSC1)"/>
<wire x1="-5.08" y1="60.96" x2="-12.7" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SDA" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="PC4(ADC4/SDA)"/>
<wire x1="43.18" y1="68.58" x2="53.34" y2="68.58" width="0.1524" layer="91"/>
<label x="45.72" y="68.58" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X9" gate="-1" pin="KL"/>
<wire x1="-30.48" y1="71.12" x2="-22.86" y2="71.12" width="0.1524" layer="91"/>
<label x="-22.86" y="71.12" size="1.778" layer="95"/>
</segment>
</net>
<net name="SCL" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="PC5(ADC5/SCL)"/>
<wire x1="43.18" y1="66.04" x2="53.34" y2="66.04" width="0.1524" layer="91"/>
<label x="45.72" y="66.04" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X9" gate="-2" pin="KL"/>
<wire x1="-30.48" y1="66.04" x2="-22.86" y2="66.04" width="0.1524" layer="91"/>
<label x="-22.86" y="66.04" size="1.778" layer="95"/>
</segment>
</net>
<net name="IO13" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="PB7(XTAL2/TOSC2)"/>
<wire x1="-5.08" y1="55.88" x2="-12.7" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PD6" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="PD6(AIN0)"/>
<wire x1="43.18" y1="40.64" x2="53.34" y2="40.64" width="0.1524" layer="91"/>
<label x="45.72" y="40.64" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="PH5_I" gate="A" pin="3"/>
<wire x1="195.58" y1="-124.46" x2="195.58" y2="-147.32" width="0.1524" layer="91"/>
<label x="195.58" y="-147.32" size="1.778" layer="95"/>
</segment>
</net>
<net name="PD7" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="PD7(AIN1)"/>
<wire x1="43.18" y1="38.1" x2="53.34" y2="38.1" width="0.1524" layer="91"/>
<label x="45.72" y="38.1" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="PH11_I" gate="A" pin="3"/>
<wire x1="195.58" y1="-172.72" x2="195.58" y2="-149.86" width="0.1524" layer="91"/>
<label x="195.58" y="-149.86" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="PH6_E" gate="A" pin="3"/>
<pinref part="X3" gate="-2" pin="KL"/>
<wire x1="71.12" y1="-187.96" x2="71.12" y2="-195.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="PH6_E" gate="A" pin="1"/>
<pinref part="X3" gate="-1" pin="KL"/>
<wire x1="66.04" y1="-187.96" x2="66.04" y2="-195.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="PH7_E" gate="A" pin="3"/>
<pinref part="X4" gate="-2" pin="KL"/>
<wire x1="96.52" y1="-187.96" x2="96.52" y2="-195.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="PH7_E" gate="A" pin="1"/>
<pinref part="X4" gate="-1" pin="KL"/>
<wire x1="91.44" y1="-187.96" x2="91.44" y2="-195.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="PH8_E" gate="A" pin="3"/>
<pinref part="X5" gate="-2" pin="KL"/>
<wire x1="121.92" y1="-187.96" x2="121.92" y2="-195.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="PH8_E" gate="A" pin="1"/>
<pinref part="X5" gate="-1" pin="KL"/>
<wire x1="116.84" y1="-187.96" x2="116.84" y2="-195.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="PH9_E" gate="A" pin="3"/>
<pinref part="X6" gate="-2" pin="KL"/>
<wire x1="147.32" y1="-187.96" x2="147.32" y2="-195.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="PH9_E" gate="A" pin="1"/>
<pinref part="X6" gate="-1" pin="KL"/>
<wire x1="142.24" y1="-187.96" x2="142.24" y2="-195.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="PH10_E" gate="A" pin="3"/>
<pinref part="X7" gate="-2" pin="KL"/>
<wire x1="172.72" y1="-187.96" x2="172.72" y2="-195.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="PH10_E" gate="A" pin="1"/>
<pinref part="X7" gate="-1" pin="KL"/>
<wire x1="167.64" y1="-187.96" x2="167.64" y2="-195.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="PH11_E" gate="A" pin="3"/>
<pinref part="X8" gate="-2" pin="KL"/>
<wire x1="198.12" y1="-187.96" x2="198.12" y2="-195.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="PH11_E" gate="A" pin="1"/>
<pinref part="X8" gate="-1" pin="KL"/>
<wire x1="193.04" y1="-187.96" x2="193.04" y2="-195.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="X11" gate="-1" pin="KL"/>
<pinref part="PH1_E" gate="A" pin="1"/>
<wire x1="96.52" y1="-101.6" x2="96.52" y2="-109.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="X11" gate="-2" pin="KL"/>
<pinref part="PH1_E" gate="A" pin="3"/>
<wire x1="91.44" y1="-101.6" x2="91.44" y2="-109.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="X12" gate="-1" pin="KL"/>
<pinref part="PH2_E" gate="A" pin="1"/>
<wire x1="121.92" y1="-101.6" x2="121.92" y2="-109.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="X12" gate="-2" pin="KL"/>
<pinref part="PH2_E" gate="A" pin="3"/>
<wire x1="116.84" y1="-101.6" x2="116.84" y2="-109.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="X13" gate="-1" pin="KL"/>
<pinref part="PH3_E" gate="A" pin="1"/>
<wire x1="147.32" y1="-101.6" x2="147.32" y2="-109.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="X13" gate="-2" pin="KL"/>
<pinref part="PH3_E" gate="A" pin="3"/>
<wire x1="142.24" y1="-101.6" x2="142.24" y2="-109.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="X14" gate="-1" pin="KL"/>
<pinref part="PH4_E" gate="A" pin="1"/>
<wire x1="172.72" y1="-101.6" x2="172.72" y2="-109.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="X14" gate="-2" pin="KL"/>
<pinref part="PH4_E" gate="A" pin="3"/>
<wire x1="167.64" y1="-101.6" x2="167.64" y2="-109.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<pinref part="X15" gate="-1" pin="KL"/>
<pinref part="PH5_E" gate="A" pin="1"/>
<wire x1="198.12" y1="-101.6" x2="198.12" y2="-109.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<pinref part="X15" gate="-2" pin="KL"/>
<pinref part="PH5_E" gate="A" pin="3"/>
<wire x1="193.04" y1="-101.6" x2="193.04" y2="-109.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PC1" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="PC1(ADC1)"/>
<wire x1="43.18" y1="76.2" x2="53.34" y2="76.2" width="0.1524" layer="91"/>
<label x="45.72" y="76.2" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="PH1_I" gate="A" pin="3"/>
<label x="93.98" y="-147.32" size="1.778" layer="95"/>
<wire x1="93.98" y1="-124.46" x2="93.98" y2="-147.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="GND"/>
<wire x1="-5.08" y1="73.66" x2="-7.62" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="AREF"/>
<wire x1="-5.08" y1="71.12" x2="-7.62" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="AVCC"/>
<wire x1="-5.08" y1="68.58" x2="-7.62" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PC0" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="PC0(ADC0)"/>
<wire x1="43.18" y1="78.74" x2="53.34" y2="78.74" width="0.1524" layer="91"/>
<label x="45.72" y="78.74" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="PH7_I" gate="A" pin="3"/>
<wire x1="93.98" y1="-172.72" x2="93.98" y2="-149.86" width="0.1524" layer="91"/>
<label x="93.98" y="-165.1" size="1.778" layer="95" rot="R90"/>
<label x="93.98" y="-149.86" size="1.778" layer="95"/>
</segment>
</net>
<net name="PC2" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="PC2(ADC2)"/>
<wire x1="43.18" y1="73.66" x2="53.34" y2="73.66" width="0.1524" layer="91"/>
<label x="45.72" y="73.66" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="PH0_I" gate="A" pin="3"/>
<label x="68.58" y="-147.32" size="1.778" layer="95"/>
<wire x1="68.58" y1="-124.46" x2="68.58" y2="-147.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PD0" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="PD0(RXD)"/>
<wire x1="43.18" y1="55.88" x2="53.34" y2="55.88" width="0.1524" layer="91"/>
<label x="45.72" y="55.88" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="PH2_I" gate="A" pin="3"/>
<wire x1="119.38" y1="-124.46" x2="119.38" y2="-147.32" width="0.1524" layer="91"/>
<label x="119.38" y="-147.32" size="1.778" layer="95"/>
</segment>
</net>
<net name="PD1" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="PD1(TXD)"/>
<wire x1="43.18" y1="53.34" x2="53.34" y2="53.34" width="0.1524" layer="91"/>
<label x="45.72" y="53.34" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="PH8_I" gate="A" pin="3"/>
<wire x1="119.38" y1="-172.72" x2="119.38" y2="-149.86" width="0.1524" layer="91"/>
<label x="119.38" y="-149.86" size="1.778" layer="95"/>
</segment>
</net>
<net name="PD2" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="PD2(INT0)"/>
<wire x1="43.18" y1="50.8" x2="53.34" y2="50.8" width="0.1524" layer="91"/>
<label x="45.72" y="50.8" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="PH3_I" gate="A" pin="3"/>
<wire x1="144.78" y1="-124.46" x2="144.78" y2="-147.32" width="0.1524" layer="91"/>
<label x="144.78" y="-147.32" size="1.778" layer="95"/>
</segment>
</net>
<net name="PD3" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="PD3(INT1)"/>
<wire x1="43.18" y1="48.26" x2="53.34" y2="48.26" width="0.1524" layer="91"/>
<label x="45.72" y="48.26" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="PH9_I" gate="A" pin="3"/>
<wire x1="144.78" y1="-172.72" x2="144.78" y2="-149.86" width="0.1524" layer="91"/>
<label x="144.78" y="-149.86" size="1.778" layer="95"/>
</segment>
</net>
<net name="PD4" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="PD4(XCK/T0)"/>
<wire x1="43.18" y1="45.72" x2="53.34" y2="45.72" width="0.1524" layer="91"/>
<label x="45.72" y="45.72" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="PH4_I" gate="A" pin="3"/>
<wire x1="170.18" y1="-124.46" x2="170.18" y2="-147.32" width="0.1524" layer="91"/>
<label x="170.18" y="-147.32" size="1.778" layer="95"/>
</segment>
</net>
<net name="PD5" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="PD5(T1)"/>
<label x="45.72" y="43.18" size="1.778" layer="95"/>
<wire x1="43.18" y1="43.18" x2="53.34" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="PH10_I" gate="A" pin="3"/>
<wire x1="170.18" y1="-172.72" x2="170.18" y2="-149.86" width="0.1524" layer="91"/>
<label x="170.18" y="-157.48" size="1.778" layer="95" rot="R270"/>
<label x="170.18" y="-149.86" size="1.778" layer="95"/>
</segment>
</net>
<net name="PC3" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="PC3(ADC3)"/>
<wire x1="43.18" y1="71.12" x2="53.34" y2="71.12" width="0.1524" layer="91"/>
<label x="45.72" y="71.12" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="PH6_I" gate="A" pin="3"/>
<wire x1="68.58" y1="-172.72" x2="68.58" y2="-149.86" width="0.1524" layer="91"/>
<label x="68.58" y="-149.86" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="PH0_E" gate="A" pin="3"/>
<pinref part="X10" gate="-2" pin="KL"/>
<wire x1="66.04" y1="-109.22" x2="66.04" y2="-101.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="PH0_E" gate="A" pin="1"/>
<pinref part="X10" gate="-1" pin="KL"/>
<wire x1="71.12" y1="-109.22" x2="71.12" y2="-101.6" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
