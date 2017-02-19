<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.6.0">
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
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
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
<library name="pinhead">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1X06">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-1.27" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-0.635" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-1.27" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-1.27" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-7.6962" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-7.62" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="-6.604" y1="-0.254" x2="-6.096" y2="0.254" layer="51"/>
<rectangle x1="6.096" y1="-0.254" x2="6.604" y2="0.254" layer="51"/>
</package>
<package name="1X06/90">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-7.62" y1="-1.905" x2="-5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="6.985" x2="-6.35" y2="1.27" width="0.762" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="6.985" x2="-3.81" y2="1.27" width="0.762" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="0" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="6.985" x2="1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="6.985" x2="3.81" y2="1.27" width="0.762" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="6.985" x2="6.35" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-6.35" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-3.81" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="3.81" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="6.35" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-8.255" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="9.525" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-6.731" y1="0.635" x2="-5.969" y2="1.143" layer="21"/>
<rectangle x1="-4.191" y1="0.635" x2="-3.429" y2="1.143" layer="21"/>
<rectangle x1="-1.651" y1="0.635" x2="-0.889" y2="1.143" layer="21"/>
<rectangle x1="0.889" y1="0.635" x2="1.651" y2="1.143" layer="21"/>
<rectangle x1="3.429" y1="0.635" x2="4.191" y2="1.143" layer="21"/>
<rectangle x1="5.969" y1="0.635" x2="6.731" y2="1.143" layer="21"/>
<rectangle x1="-6.731" y1="-2.921" x2="-5.969" y2="-1.905" layer="21"/>
<rectangle x1="-4.191" y1="-2.921" x2="-3.429" y2="-1.905" layer="21"/>
<rectangle x1="-1.651" y1="-2.921" x2="-0.889" y2="-1.905" layer="21"/>
<rectangle x1="0.889" y1="-2.921" x2="1.651" y2="-1.905" layer="21"/>
<rectangle x1="3.429" y1="-2.921" x2="4.191" y2="-1.905" layer="21"/>
<rectangle x1="5.969" y1="-2.921" x2="6.731" y2="-1.905" layer="21"/>
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
</packages>
<symbols>
<symbol name="PINHD6">
<wire x1="-6.35" y1="-7.62" x2="1.27" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="1.27" y2="10.16" width="0.4064" layer="94"/>
<wire x1="1.27" y1="10.16" x2="-6.35" y2="10.16" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="10.16" x2="-6.35" y2="-7.62" width="0.4064" layer="94"/>
<text x="-6.35" y="10.795" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="3" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="5" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="6" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" function="dot"/>
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
</symbols>
<devicesets>
<deviceset name="PINHD-1X6" prefix="JP" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINHD6" x="0" y="-2.54"/>
</gates>
<devices>
<device name="" package="1X06">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="/90" package="1X06/90">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
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
</devicesets>
</library>
<library name="con-wago-508">
<description>&lt;b&gt;Wago Screw Clamps&lt;/b&gt;&lt;p&gt;
Grid 5.08 mm&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="W237-3E">
<description>&lt;b&gt;WAGO SREW CLAMP&lt;/b&gt;</description>
<wire x1="-6.0706" y1="-1.651" x2="-4.064" y2="0.3556" width="0.254" layer="51"/>
<wire x1="-0.9144" y1="-1.6764" x2="0.9906" y2="0.3556" width="0.254" layer="51"/>
<wire x1="4.0894" y1="-1.651" x2="6.096" y2="0.3556" width="0.254" layer="51"/>
<wire x1="-7.62" y1="-4.826" x2="7.62" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-4.826" x2="-7.62" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-2.413" x2="-7.62" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-2.413" x2="-6.096" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="-2.413" x2="-4.064" y2="-2.413" width="0.1524" layer="51"/>
<wire x1="-4.064" y1="-2.413" x2="-1.016" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-2.413" x2="4.064" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-2.413" x2="7.62" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="4.191" x2="7.62" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="4.191" x2="-7.62" y2="4.445" width="0.1524" layer="21"/>
<wire x1="7.62" y1="4.445" x2="7.62" y2="4.191" width="0.1524" layer="21"/>
<wire x1="7.62" y1="4.445" x2="-7.62" y2="4.445" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-2.413" x2="7.62" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="7.62" y1="4.191" x2="7.62" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="4.064" y1="-2.413" x2="6.096" y2="-2.413" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="-2.413" x2="1.016" y2="-2.413" width="0.1524" layer="51"/>
<circle x="-5.08" y="-0.635" radius="1.4986" width="0.1524" layer="51"/>
<circle x="-5.08" y="2.8448" radius="0.508" width="0.1524" layer="21"/>
<circle x="0" y="-0.635" radius="1.4986" width="0.1524" layer="51"/>
<circle x="0" y="2.8448" radius="0.508" width="0.1524" layer="21"/>
<circle x="5.08" y="-0.635" radius="1.4986" width="0.1524" layer="51"/>
<circle x="5.08" y="2.8448" radius="0.508" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="-0.635" drill="1.1938" shape="long" rot="R90"/>
<pad name="2" x="0" y="-0.635" drill="1.1938" shape="long" rot="R90"/>
<pad name="3" x="5.08" y="-0.635" drill="1.1938" shape="long" rot="R90"/>
<text x="-6.985" y="1.27" size="1.27" layer="51" ratio="10">1</text>
<text x="-1.8542" y="1.2192" size="1.27" layer="51" ratio="10">2</text>
<text x="-6.35" y="-4.318" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-6.35" y="-6.858" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="3.175" y="1.27" size="1.27" layer="51" ratio="10">3</text>
</package>
<package name="W237-132">
<description>&lt;b&gt;WAGO SREW CLAMP&lt;/b&gt;</description>
<wire x1="-3.5306" y1="-1.651" x2="-1.524" y2="0.3556" width="0.254" layer="51"/>
<wire x1="1.6256" y1="-1.6764" x2="3.5306" y2="0.3556" width="0.254" layer="51"/>
<wire x1="-5.08" y1="4.191" x2="5.08" y2="4.191" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-4.826" x2="5.08" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-4.826" x2="-5.08" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="4.191" x2="-5.08" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-2.413" x2="-3.429" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-2.413" x2="-1.651" y2="-2.413" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="-2.413" x2="1.651" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="3.429" y1="-2.413" x2="5.08" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-2.413" x2="-5.08" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-2.413" x2="5.08" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="4.191" x2="-5.08" y2="4.445" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="4.445" x2="5.08" y2="4.445" width="0.1524" layer="21"/>
<wire x1="5.08" y1="4.191" x2="5.08" y2="4.445" width="0.1524" layer="21"/>
<wire x1="1.651" y1="-2.413" x2="3.429" y2="-2.413" width="0.1524" layer="51"/>
<circle x="-2.54" y="-0.635" radius="1.4986" width="0.1524" layer="51"/>
<circle x="-2.54" y="2.8448" radius="0.508" width="0.1524" layer="21"/>
<circle x="2.54" y="-0.635" radius="1.4986" width="0.1524" layer="51"/>
<circle x="2.54" y="2.8448" radius="0.508" width="0.1524" layer="21"/>
<pad name="1" x="-2.54" y="-0.635" drill="1.1938" shape="long" rot="R90"/>
<pad name="2" x="2.54" y="-0.635" drill="1.1938" shape="long" rot="R90"/>
<text x="-4.445" y="1.27" size="1.27" layer="51" ratio="10">1</text>
<text x="0.6858" y="1.2192" size="1.27" layer="51" ratio="10">2</text>
<text x="-3.81" y="-6.985" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-3.81" y="-4.318" size="1.27" layer="25" ratio="10">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="KL">
<wire x1="1.778" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<circle x="0.889" y="0" radius="0.898" width="0.254" layer="94"/>
<text x="-1.27" y="0.889" size="1.778" layer="95" rot="R180">&gt;NAME</text>
<pin name="KL" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="KL+V">
<wire x1="1.778" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<circle x="0.889" y="0" radius="0.898" width="0.254" layer="94"/>
<text x="0" y="2.54" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="0.889" size="1.778" layer="95" rot="R180">&gt;NAME</text>
<pin name="KL" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="W237-3E" prefix="X" uservalue="yes">
<description>&lt;b&gt;WAGO SREW CLAMP&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="KL" x="0" y="7.62" addlevel="always"/>
<gate name="-2" symbol="KL" x="0" y="2.54" addlevel="always"/>
<gate name="-3" symbol="KL+V" x="0" y="-2.54" addlevel="always"/>
</gates>
<devices>
<device name="" package="W237-3E">
<connects>
<connect gate="-1" pin="KL" pad="1"/>
<connect gate="-2" pin="KL" pad="2"/>
<connect gate="-3" pin="KL" pad="3"/>
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
<deviceset name="W237-02P" prefix="X" uservalue="yes">
<description>&lt;b&gt;WAGO SREW CLAMP&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="KL" x="0" y="0" addlevel="always"/>
<gate name="-2" symbol="KL+V" x="0" y="-5.08" addlevel="always"/>
</gates>
<devices>
<device name="" package="W237-132">
<connects>
<connect gate="-1" pin="KL" pad="1"/>
<connect gate="-2" pin="KL" pad="2"/>
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
<symbol name="+5V">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
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
<part name="JP1" library="pinhead" deviceset="PINHD-1X6" device=""/>
<part name="JP2" library="pinhead" deviceset="PINHD-1X6" device=""/>
<part name="JP3" library="pinhead" deviceset="PINHD-1X6" device=""/>
<part name="JP4" library="pinhead" deviceset="PINHD-1X6" device=""/>
<part name="JP5" library="pinhead" deviceset="PINHD-1X3" device=""/>
<part name="JP6" library="pinhead" deviceset="PINHD-1X3" device=""/>
<part name="JP7" library="pinhead" deviceset="PINHD-1X3" device=""/>
<part name="JP8" library="pinhead" deviceset="PINHD-1X3" device=""/>
<part name="JP9" library="pinhead" deviceset="PINHD-1X3" device=""/>
<part name="JP10" library="pinhead" deviceset="PINHD-1X3" device=""/>
<part name="X1" library="con-wago-508" deviceset="W237-3E" device=""/>
<part name="X2" library="con-wago-508" deviceset="W237-3E" device=""/>
<part name="X3" library="con-wago-508" deviceset="W237-3E" device=""/>
<part name="X4" library="con-wago-508" deviceset="W237-3E" device=""/>
<part name="X5" library="con-wago-508" deviceset="W237-3E" device=""/>
<part name="X6" library="con-wago-508" deviceset="W237-3E" device=""/>
<part name="JP11" library="pinhead" deviceset="PINHD-1X5" device=""/>
<part name="JP12" library="pinhead" deviceset="PINHD-1X5" device=""/>
<part name="JP13" library="pinhead" deviceset="PINHD-1X5" device=""/>
<part name="JP14" library="pinhead" deviceset="PINHD-1X5" device=""/>
<part name="JP15" library="pinhead" deviceset="PINHD-1X5" device=""/>
<part name="JP16" library="pinhead" deviceset="PINHD-1X5" device=""/>
<part name="JP17" library="pinhead" deviceset="PINHD-1X5" device=""/>
<part name="JP18" library="pinhead" deviceset="PINHD-1X5" device=""/>
<part name="JP19" library="pinhead" deviceset="PINHD-1X5" device=""/>
<part name="JP20" library="pinhead" deviceset="PINHD-1X5" device=""/>
<part name="JP21" library="pinhead" deviceset="PINHD-1X5" device=""/>
<part name="JP22" library="pinhead" deviceset="PINHD-1X5" device=""/>
<part name="JP23" library="pinhead" deviceset="PINHD-1X3" device=""/>
<part name="JP24" library="pinhead" deviceset="PINHD-1X3" device=""/>
<part name="JP25" library="pinhead" deviceset="PINHD-1X3" device=""/>
<part name="JP26" library="pinhead" deviceset="PINHD-1X3" device=""/>
<part name="JP27" library="pinhead" deviceset="PINHD-1X3" device=""/>
<part name="JP28" library="pinhead" deviceset="PINHD-1X3" device=""/>
<part name="X7" library="con-wago-508" deviceset="W237-3E" device=""/>
<part name="X8" library="con-wago-508" deviceset="W237-3E" device=""/>
<part name="X9" library="con-wago-508" deviceset="W237-3E" device=""/>
<part name="X11" library="con-wago-508" deviceset="W237-3E" device=""/>
<part name="X12" library="con-wago-508" deviceset="W237-3E" device=""/>
<part name="X10" library="con-wago-508" deviceset="W237-02P" device=""/>
<part name="P+1" library="supply1" deviceset="+5V" device=""/>
<part name="P+2" library="supply1" deviceset="+5V" device=""/>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="GND2" library="supply1" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="JP1" gate="A" x="144.78" y="71.12" rot="R180"/>
<instance part="JP2" gate="A" x="66.04" y="81.28" rot="R180"/>
<instance part="JP3" gate="A" x="144.78" y="22.86" rot="R180"/>
<instance part="JP4" gate="A" x="144.78" y="45.72" rot="R180"/>
<instance part="JP5" gate="A" x="60.96" y="81.28"/>
<instance part="JP6" gate="A" x="60.96" y="66.04"/>
<instance part="JP7" gate="A" x="60.96" y="50.8"/>
<instance part="JP8" gate="A" x="60.96" y="35.56"/>
<instance part="JP9" gate="A" x="60.96" y="20.32"/>
<instance part="JP10" gate="A" x="60.96" y="5.08"/>
<instance part="X1" gate="-1" x="43.18" y="86.36"/>
<instance part="X1" gate="-2" x="43.18" y="81.28"/>
<instance part="X1" gate="-3" x="43.18" y="76.2"/>
<instance part="X2" gate="-1" x="43.18" y="71.12"/>
<instance part="X2" gate="-2" x="43.18" y="66.04"/>
<instance part="X2" gate="-3" x="43.18" y="60.96"/>
<instance part="X3" gate="-1" x="43.18" y="55.88"/>
<instance part="X3" gate="-2" x="43.18" y="50.8"/>
<instance part="X3" gate="-3" x="43.18" y="45.72"/>
<instance part="X4" gate="-1" x="43.18" y="40.64"/>
<instance part="X4" gate="-2" x="43.18" y="35.56"/>
<instance part="X4" gate="-3" x="43.18" y="30.48"/>
<instance part="X5" gate="-1" x="43.18" y="25.4"/>
<instance part="X5" gate="-2" x="43.18" y="20.32"/>
<instance part="X5" gate="-3" x="43.18" y="15.24"/>
<instance part="X6" gate="-1" x="43.18" y="10.16"/>
<instance part="X6" gate="-2" x="43.18" y="5.08"/>
<instance part="X6" gate="-3" x="43.18" y="0"/>
<instance part="JP11" gate="A" x="101.6" y="66.04"/>
<instance part="JP12" gate="A" x="101.6" y="81.28"/>
<instance part="JP13" gate="A" x="101.6" y="96.52"/>
<instance part="JP14" gate="A" x="101.6" y="111.76"/>
<instance part="JP15" gate="A" x="101.6" y="127"/>
<instance part="JP16" gate="A" x="101.6" y="5.08"/>
<instance part="JP17" gate="A" x="215.9" y="83.82"/>
<instance part="JP18" gate="A" x="203.2" y="68.58"/>
<instance part="JP19" gate="A" x="215.9" y="53.34"/>
<instance part="JP20" gate="A" x="203.2" y="38.1"/>
<instance part="JP21" gate="A" x="215.9" y="22.86"/>
<instance part="JP22" gate="A" x="203.2" y="7.62"/>
<instance part="JP23" gate="A" x="134.62" y="81.28"/>
<instance part="JP24" gate="A" x="134.62" y="66.04"/>
<instance part="JP25" gate="A" x="134.62" y="50.8"/>
<instance part="JP26" gate="A" x="134.62" y="35.56"/>
<instance part="JP27" gate="A" x="134.62" y="20.32"/>
<instance part="JP28" gate="A" x="134.62" y="5.08"/>
<instance part="X7" gate="-1" x="114.3" y="86.36"/>
<instance part="X7" gate="-2" x="114.3" y="81.28"/>
<instance part="X7" gate="-3" x="114.3" y="76.2"/>
<instance part="X8" gate="-1" x="114.3" y="71.12"/>
<instance part="X8" gate="-2" x="114.3" y="66.04"/>
<instance part="X8" gate="-3" x="114.3" y="60.96"/>
<instance part="X9" gate="-1" x="114.3" y="55.88"/>
<instance part="X9" gate="-2" x="114.3" y="50.8"/>
<instance part="X9" gate="-3" x="114.3" y="45.72"/>
<instance part="X11" gate="-1" x="114.3" y="25.4"/>
<instance part="X11" gate="-2" x="114.3" y="20.32"/>
<instance part="X11" gate="-3" x="114.3" y="15.24"/>
<instance part="X12" gate="-1" x="114.3" y="10.16"/>
<instance part="X12" gate="-2" x="114.3" y="5.08"/>
<instance part="X12" gate="-3" x="114.3" y="0"/>
<instance part="X10" gate="-1" x="114.3" y="38.1"/>
<instance part="X10" gate="-2" x="114.3" y="33.02"/>
<instance part="P+1" gate="1" x="83.82" y="167.64"/>
<instance part="P+2" gate="1" x="180.34" y="106.68"/>
<instance part="GND1" gate="1" x="190.5" y="-2.54"/>
<instance part="GND2" gate="1" x="88.9" y="-7.62"/>
</instances>
<busses>
</busses>
<nets>
<net name="+5V" class="0">
<segment>
<pinref part="JP11" gate="A" pin="1"/>
<wire x1="99.06" y1="71.12" x2="83.82" y2="71.12" width="0.1524" layer="91"/>
<wire x1="83.82" y1="76.2" x2="83.82" y2="86.36" width="0.1524" layer="91"/>
<pinref part="P+1" gate="1" pin="+5V"/>
<wire x1="83.82" y1="101.6" x2="83.82" y2="106.68" width="0.1524" layer="91"/>
<pinref part="JP11" gate="A" pin="5"/>
<wire x1="83.82" y1="106.68" x2="83.82" y2="116.84" width="0.1524" layer="91"/>
<wire x1="83.82" y1="132.08" x2="83.82" y2="165.1" width="0.1524" layer="91"/>
<wire x1="99.06" y1="60.96" x2="83.82" y2="60.96" width="0.1524" layer="91"/>
<pinref part="JP12" gate="A" pin="1"/>
<wire x1="99.06" y1="86.36" x2="83.82" y2="86.36" width="0.1524" layer="91"/>
<pinref part="JP12" gate="A" pin="5"/>
<wire x1="99.06" y1="76.2" x2="83.82" y2="76.2" width="0.1524" layer="91"/>
<wire x1="83.82" y1="76.2" x2="83.82" y2="71.12" width="0.1524" layer="91"/>
<wire x1="83.82" y1="60.96" x2="83.82" y2="71.12" width="0.1524" layer="91"/>
<pinref part="JP13" gate="A" pin="1"/>
<wire x1="99.06" y1="101.6" x2="83.82" y2="101.6" width="0.1524" layer="91"/>
<wire x1="83.82" y1="101.6" x2="83.82" y2="91.44" width="0.1524" layer="91"/>
<pinref part="JP13" gate="A" pin="5"/>
<wire x1="99.06" y1="91.44" x2="83.82" y2="91.44" width="0.1524" layer="91"/>
<wire x1="83.82" y1="91.44" x2="83.82" y2="86.36" width="0.1524" layer="91"/>
<pinref part="JP16" gate="A" pin="5"/>
<wire x1="83.82" y1="10.16" x2="83.82" y2="0" width="0.1524" layer="91"/>
<wire x1="99.06" y1="0" x2="83.82" y2="0" width="0.1524" layer="91"/>
<pinref part="JP16" gate="A" pin="1"/>
<wire x1="99.06" y1="10.16" x2="83.82" y2="10.16" width="0.1524" layer="91"/>
<pinref part="JP15" gate="A" pin="5"/>
<wire x1="99.06" y1="121.92" x2="83.82" y2="121.92" width="0.1524" layer="91"/>
<wire x1="83.82" y1="121.92" x2="83.82" y2="116.84" width="0.1524" layer="91"/>
<pinref part="JP15" gate="A" pin="1"/>
<wire x1="83.82" y1="60.96" x2="83.82" y2="10.16" width="0.1524" layer="91"/>
<wire x1="99.06" y1="132.08" x2="83.82" y2="132.08" width="0.1524" layer="91"/>
<wire x1="83.82" y1="132.08" x2="83.82" y2="121.92" width="0.1524" layer="91"/>
<pinref part="JP14" gate="A" pin="5"/>
<wire x1="99.06" y1="106.68" x2="83.82" y2="106.68" width="0.1524" layer="91"/>
<wire x1="83.82" y1="71.12" x2="83.82" y2="55.88" width="0.1524" layer="91"/>
<pinref part="JP14" gate="A" pin="1"/>
<wire x1="99.06" y1="116.84" x2="83.82" y2="116.84" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P+2" gate="1" pin="+5V"/>
<wire x1="180.34" y1="104.14" x2="180.34" y2="88.9" width="0.1524" layer="91"/>
<pinref part="JP17" gate="A" pin="1"/>
<wire x1="180.34" y1="88.9" x2="213.36" y2="88.9" width="0.1524" layer="91"/>
<wire x1="180.34" y1="88.9" x2="180.34" y2="78.74" width="0.1524" layer="91"/>
<pinref part="JP17" gate="A" pin="5"/>
<wire x1="213.36" y1="78.74" x2="180.34" y2="78.74" width="0.1524" layer="91"/>
<pinref part="JP18" gate="A" pin="1"/>
<wire x1="200.66" y1="73.66" x2="180.34" y2="73.66" width="0.1524" layer="91"/>
<wire x1="180.34" y1="78.74" x2="180.34" y2="73.66" width="0.1524" layer="91"/>
<wire x1="180.34" y1="73.66" x2="180.34" y2="63.5" width="0.1524" layer="91"/>
<pinref part="JP22" gate="A" pin="5"/>
<wire x1="180.34" y1="63.5" x2="180.34" y2="58.42" width="0.1524" layer="91"/>
<wire x1="180.34" y1="58.42" x2="180.34" y2="48.26" width="0.1524" layer="91"/>
<wire x1="180.34" y1="48.26" x2="180.34" y2="43.18" width="0.1524" layer="91"/>
<wire x1="180.34" y1="43.18" x2="180.34" y2="33.02" width="0.1524" layer="91"/>
<wire x1="180.34" y1="33.02" x2="180.34" y2="27.94" width="0.1524" layer="91"/>
<wire x1="180.34" y1="27.94" x2="180.34" y2="17.78" width="0.1524" layer="91"/>
<wire x1="180.34" y1="17.78" x2="180.34" y2="15.24" width="0.1524" layer="91"/>
<wire x1="180.34" y1="15.24" x2="180.34" y2="12.7" width="0.1524" layer="91"/>
<wire x1="180.34" y1="12.7" x2="180.34" y2="2.54" width="0.1524" layer="91"/>
<wire x1="200.66" y1="2.54" x2="180.34" y2="2.54" width="0.1524" layer="91"/>
<pinref part="JP22" gate="A" pin="1"/>
<wire x1="200.66" y1="12.7" x2="180.34" y2="12.7" width="0.1524" layer="91"/>
<pinref part="JP21" gate="A" pin="5"/>
<wire x1="213.36" y1="17.78" x2="180.34" y2="17.78" width="0.1524" layer="91"/>
<pinref part="JP21" gate="A" pin="1"/>
<wire x1="213.36" y1="27.94" x2="180.34" y2="27.94" width="0.1524" layer="91"/>
<pinref part="JP20" gate="A" pin="5"/>
<wire x1="200.66" y1="33.02" x2="180.34" y2="33.02" width="0.1524" layer="91"/>
<pinref part="JP20" gate="A" pin="1"/>
<wire x1="200.66" y1="43.18" x2="180.34" y2="43.18" width="0.1524" layer="91"/>
<pinref part="JP19" gate="A" pin="5"/>
<wire x1="213.36" y1="48.26" x2="180.34" y2="48.26" width="0.1524" layer="91"/>
<pinref part="JP19" gate="A" pin="1"/>
<wire x1="213.36" y1="58.42" x2="180.34" y2="58.42" width="0.1524" layer="91"/>
<pinref part="JP18" gate="A" pin="5"/>
<wire x1="200.66" y1="63.5" x2="180.34" y2="63.5" width="0.1524" layer="91"/>
<pinref part="JP3" gate="A" pin="1"/>
<wire x1="147.32" y1="15.24" x2="180.34" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="JP11" gate="A" pin="2"/>
<wire x1="99.06" y1="68.58" x2="88.9" y2="68.58" width="0.1524" layer="91"/>
<pinref part="GND2" gate="1" pin="GND"/>
<pinref part="JP16" gate="A" pin="4"/>
<wire x1="88.9" y1="73.66" x2="88.9" y2="68.58" width="0.1524" layer="91"/>
<wire x1="88.9" y1="63.5" x2="88.9" y2="7.62" width="0.1524" layer="91"/>
<wire x1="88.9" y1="7.62" x2="88.9" y2="2.54" width="0.1524" layer="91"/>
<wire x1="88.9" y1="2.54" x2="88.9" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="99.06" y1="2.54" x2="88.9" y2="2.54" width="0.1524" layer="91"/>
<pinref part="JP16" gate="A" pin="2"/>
<wire x1="99.06" y1="7.62" x2="88.9" y2="7.62" width="0.1524" layer="91"/>
<pinref part="JP15" gate="A" pin="4"/>
<wire x1="99.06" y1="124.46" x2="88.9" y2="124.46" width="0.1524" layer="91"/>
<wire x1="88.9" y1="124.46" x2="88.9" y2="114.3" width="0.1524" layer="91"/>
<pinref part="JP15" gate="A" pin="2"/>
<wire x1="99.06" y1="129.54" x2="88.9" y2="129.54" width="0.1524" layer="91"/>
<wire x1="88.9" y1="129.54" x2="88.9" y2="124.46" width="0.1524" layer="91"/>
<pinref part="JP14" gate="A" pin="4"/>
<wire x1="88.9" y1="114.3" x2="88.9" y2="83.82" width="0.1524" layer="91"/>
<wire x1="99.06" y1="109.22" x2="88.9" y2="109.22" width="0.1524" layer="91"/>
<wire x1="88.9" y1="109.22" x2="88.9" y2="99.06" width="0.1524" layer="91"/>
<pinref part="JP14" gate="A" pin="2"/>
<wire x1="99.06" y1="114.3" x2="88.9" y2="114.3" width="0.1524" layer="91"/>
<wire x1="88.9" y1="68.58" x2="88.9" y2="63.5" width="0.1524" layer="91"/>
<pinref part="JP13" gate="A" pin="4"/>
<wire x1="99.06" y1="93.98" x2="88.9" y2="93.98" width="0.1524" layer="91"/>
<wire x1="88.9" y1="93.98" x2="88.9" y2="83.82" width="0.1524" layer="91"/>
<pinref part="JP13" gate="A" pin="2"/>
<wire x1="99.06" y1="99.06" x2="88.9" y2="99.06" width="0.1524" layer="91"/>
<wire x1="88.9" y1="99.06" x2="88.9" y2="93.98" width="0.1524" layer="91"/>
<pinref part="JP12" gate="A" pin="4"/>
<wire x1="99.06" y1="78.74" x2="88.9" y2="78.74" width="0.1524" layer="91"/>
<wire x1="88.9" y1="78.74" x2="88.9" y2="73.66" width="0.1524" layer="91"/>
<pinref part="JP12" gate="A" pin="2"/>
<wire x1="99.06" y1="83.82" x2="88.9" y2="83.82" width="0.1524" layer="91"/>
<wire x1="88.9" y1="83.82" x2="88.9" y2="78.74" width="0.1524" layer="91"/>
<pinref part="JP11" gate="A" pin="4"/>
<wire x1="99.06" y1="63.5" x2="88.9" y2="63.5" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="1"/>
<wire x1="68.58" y1="73.66" x2="88.9" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="190.5" y1="0" x2="190.5" y2="5.08" width="0.1524" layer="91"/>
<pinref part="JP17" gate="A" pin="2"/>
<wire x1="190.5" y1="5.08" x2="190.5" y2="10.16" width="0.1524" layer="91"/>
<wire x1="190.5" y1="10.16" x2="190.5" y2="20.32" width="0.1524" layer="91"/>
<wire x1="190.5" y1="20.32" x2="190.5" y2="25.4" width="0.1524" layer="91"/>
<wire x1="190.5" y1="25.4" x2="190.5" y2="35.56" width="0.1524" layer="91"/>
<wire x1="190.5" y1="35.56" x2="190.5" y2="40.64" width="0.1524" layer="91"/>
<wire x1="190.5" y1="40.64" x2="190.5" y2="50.8" width="0.1524" layer="91"/>
<wire x1="190.5" y1="50.8" x2="190.5" y2="55.88" width="0.1524" layer="91"/>
<wire x1="190.5" y1="55.88" x2="190.5" y2="66.04" width="0.1524" layer="91"/>
<wire x1="190.5" y1="66.04" x2="190.5" y2="71.12" width="0.1524" layer="91"/>
<wire x1="190.5" y1="71.12" x2="190.5" y2="81.28" width="0.1524" layer="91"/>
<wire x1="190.5" y1="81.28" x2="190.5" y2="86.36" width="0.1524" layer="91"/>
<wire x1="190.5" y1="86.36" x2="213.36" y2="86.36" width="0.1524" layer="91"/>
<pinref part="JP17" gate="A" pin="4"/>
<wire x1="213.36" y1="81.28" x2="190.5" y2="81.28" width="0.1524" layer="91"/>
<pinref part="JP18" gate="A" pin="2"/>
<wire x1="200.66" y1="71.12" x2="190.5" y2="71.12" width="0.1524" layer="91"/>
<pinref part="JP18" gate="A" pin="4"/>
<wire x1="200.66" y1="66.04" x2="190.5" y2="66.04" width="0.1524" layer="91"/>
<pinref part="JP19" gate="A" pin="2"/>
<wire x1="213.36" y1="55.88" x2="190.5" y2="55.88" width="0.1524" layer="91"/>
<pinref part="JP19" gate="A" pin="4"/>
<wire x1="213.36" y1="50.8" x2="190.5" y2="50.8" width="0.1524" layer="91"/>
<pinref part="JP20" gate="A" pin="2"/>
<wire x1="200.66" y1="40.64" x2="190.5" y2="40.64" width="0.1524" layer="91"/>
<pinref part="JP20" gate="A" pin="4"/>
<wire x1="200.66" y1="35.56" x2="190.5" y2="35.56" width="0.1524" layer="91"/>
<pinref part="JP21" gate="A" pin="2"/>
<wire x1="213.36" y1="25.4" x2="190.5" y2="25.4" width="0.1524" layer="91"/>
<pinref part="JP21" gate="A" pin="4"/>
<wire x1="213.36" y1="20.32" x2="190.5" y2="20.32" width="0.1524" layer="91"/>
<pinref part="JP22" gate="A" pin="2"/>
<wire x1="200.66" y1="10.16" x2="190.5" y2="10.16" width="0.1524" layer="91"/>
<pinref part="JP22" gate="A" pin="4"/>
<wire x1="200.66" y1="5.08" x2="190.5" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="JP2" gate="A" pin="2"/>
<wire x1="68.58" y1="76.2" x2="81.28" y2="76.2" width="0.1524" layer="91"/>
<wire x1="81.28" y1="76.2" x2="81.28" y2="66.04" width="0.1524" layer="91"/>
<pinref part="JP11" gate="A" pin="3"/>
<wire x1="81.28" y1="66.04" x2="99.06" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="JP2" gate="A" pin="3"/>
<wire x1="68.58" y1="78.74" x2="81.28" y2="78.74" width="0.1524" layer="91"/>
<wire x1="81.28" y1="78.74" x2="81.28" y2="81.28" width="0.1524" layer="91"/>
<pinref part="JP12" gate="A" pin="3"/>
<wire x1="81.28" y1="81.28" x2="99.06" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="JP2" gate="A" pin="4"/>
<wire x1="68.58" y1="81.28" x2="78.74" y2="81.28" width="0.1524" layer="91"/>
<wire x1="78.74" y1="81.28" x2="78.74" y2="96.52" width="0.1524" layer="91"/>
<pinref part="JP13" gate="A" pin="3"/>
<wire x1="78.74" y1="96.52" x2="99.06" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="JP2" gate="A" pin="5"/>
<wire x1="68.58" y1="83.82" x2="78.74" y2="83.82" width="0.1524" layer="91"/>
<wire x1="78.74" y1="83.82" x2="78.74" y2="111.76" width="0.1524" layer="91"/>
<pinref part="JP14" gate="A" pin="3"/>
<wire x1="78.74" y1="111.76" x2="99.06" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="JP2" gate="A" pin="6"/>
<wire x1="68.58" y1="86.36" x2="76.2" y2="86.36" width="0.1524" layer="91"/>
<wire x1="76.2" y1="86.36" x2="76.2" y2="127" width="0.1524" layer="91"/>
<pinref part="JP15" gate="A" pin="3"/>
<wire x1="76.2" y1="127" x2="99.06" y2="127" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="JP1" gate="A" pin="6"/>
<wire x1="147.32" y1="76.2" x2="157.48" y2="76.2" width="0.1524" layer="91"/>
<wire x1="157.48" y1="76.2" x2="157.48" y2="83.82" width="0.1524" layer="91"/>
<pinref part="JP17" gate="A" pin="3"/>
<wire x1="157.48" y1="83.82" x2="213.36" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="JP1" gate="A" pin="5"/>
<wire x1="147.32" y1="73.66" x2="160.02" y2="73.66" width="0.1524" layer="91"/>
<wire x1="160.02" y1="73.66" x2="160.02" y2="68.58" width="0.1524" layer="91"/>
<pinref part="JP18" gate="A" pin="3"/>
<wire x1="160.02" y1="68.58" x2="200.66" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="JP22" gate="A" pin="3"/>
<wire x1="200.66" y1="7.62" x2="154.94" y2="7.62" width="0.1524" layer="91"/>
<wire x1="154.94" y1="7.62" x2="154.94" y2="48.26" width="0.1524" layer="91"/>
<pinref part="JP4" gate="A" pin="5"/>
<wire x1="147.32" y1="48.26" x2="154.94" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="JP21" gate="A" pin="3"/>
<wire x1="213.36" y1="22.86" x2="162.56" y2="22.86" width="0.1524" layer="91"/>
<wire x1="162.56" y1="22.86" x2="162.56" y2="45.72" width="0.1524" layer="91"/>
<pinref part="JP4" gate="A" pin="4"/>
<wire x1="162.56" y1="45.72" x2="147.32" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="JP16" gate="A" pin="3"/>
<wire x1="99.06" y1="5.08" x2="93.98" y2="5.08" width="0.1524" layer="91"/>
<wire x1="93.98" y1="5.08" x2="93.98" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="93.98" y1="-12.7" x2="160.02" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="160.02" y1="-12.7" x2="160.02" y2="17.78" width="0.1524" layer="91"/>
<pinref part="JP3" gate="A" pin="2"/>
<wire x1="160.02" y1="17.78" x2="147.32" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="JP1" gate="A" pin="4"/>
<wire x1="147.32" y1="71.12" x2="157.48" y2="71.12" width="0.1524" layer="91"/>
<wire x1="157.48" y1="71.12" x2="157.48" y2="53.34" width="0.1524" layer="91"/>
<pinref part="JP19" gate="A" pin="3"/>
<wire x1="157.48" y1="53.34" x2="213.36" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="JP1" gate="A" pin="3"/>
<wire x1="147.32" y1="68.58" x2="154.94" y2="68.58" width="0.1524" layer="91"/>
<wire x1="154.94" y1="68.58" x2="154.94" y2="50.8" width="0.1524" layer="91"/>
<wire x1="154.94" y1="50.8" x2="172.72" y2="50.8" width="0.1524" layer="91"/>
<wire x1="172.72" y1="50.8" x2="172.72" y2="38.1" width="0.1524" layer="91"/>
<pinref part="JP20" gate="A" pin="3"/>
<wire x1="172.72" y1="38.1" x2="200.66" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="JP10" gate="A" pin="2"/>
<pinref part="X6" gate="-2" pin="KL"/>
<wire x1="58.42" y1="5.08" x2="48.26" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="X6" gate="-1" pin="KL"/>
<wire x1="48.26" y1="10.16" x2="50.8" y2="10.16" width="0.1524" layer="91"/>
<wire x1="50.8" y1="10.16" x2="50.8" y2="7.62" width="0.1524" layer="91"/>
<pinref part="JP10" gate="A" pin="1"/>
<wire x1="50.8" y1="7.62" x2="58.42" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="JP10" gate="A" pin="3"/>
<wire x1="58.42" y1="2.54" x2="50.8" y2="2.54" width="0.1524" layer="91"/>
<wire x1="50.8" y1="2.54" x2="50.8" y2="0" width="0.1524" layer="91"/>
<pinref part="X6" gate="-3" pin="KL"/>
<wire x1="50.8" y1="0" x2="48.26" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="X5" gate="-3" pin="KL"/>
<wire x1="48.26" y1="15.24" x2="50.8" y2="15.24" width="0.1524" layer="91"/>
<wire x1="50.8" y1="15.24" x2="50.8" y2="17.78" width="0.1524" layer="91"/>
<pinref part="JP9" gate="A" pin="3"/>
<wire x1="50.8" y1="17.78" x2="58.42" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="JP9" gate="A" pin="2"/>
<pinref part="X5" gate="-2" pin="KL"/>
<wire x1="58.42" y1="20.32" x2="48.26" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="X5" gate="-1" pin="KL"/>
<wire x1="48.26" y1="25.4" x2="50.8" y2="25.4" width="0.1524" layer="91"/>
<wire x1="50.8" y1="25.4" x2="50.8" y2="22.86" width="0.1524" layer="91"/>
<pinref part="JP9" gate="A" pin="1"/>
<wire x1="50.8" y1="22.86" x2="58.42" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="X4" gate="-3" pin="KL"/>
<wire x1="48.26" y1="30.48" x2="50.8" y2="30.48" width="0.1524" layer="91"/>
<wire x1="50.8" y1="30.48" x2="50.8" y2="33.02" width="0.1524" layer="91"/>
<pinref part="JP8" gate="A" pin="3"/>
<wire x1="50.8" y1="33.02" x2="58.42" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="JP8" gate="A" pin="2"/>
<pinref part="X4" gate="-2" pin="KL"/>
<wire x1="58.42" y1="35.56" x2="48.26" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="X4" gate="-1" pin="KL"/>
<wire x1="48.26" y1="40.64" x2="50.8" y2="40.64" width="0.1524" layer="91"/>
<wire x1="50.8" y1="40.64" x2="50.8" y2="38.1" width="0.1524" layer="91"/>
<pinref part="JP8" gate="A" pin="1"/>
<wire x1="50.8" y1="38.1" x2="58.42" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="JP7" gate="A" pin="3"/>
<wire x1="58.42" y1="48.26" x2="50.8" y2="48.26" width="0.1524" layer="91"/>
<wire x1="50.8" y1="48.26" x2="50.8" y2="45.72" width="0.1524" layer="91"/>
<pinref part="X3" gate="-3" pin="KL"/>
<wire x1="50.8" y1="45.72" x2="48.26" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="X3" gate="-2" pin="KL"/>
<pinref part="JP7" gate="A" pin="2"/>
<wire x1="48.26" y1="50.8" x2="58.42" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="JP7" gate="A" pin="1"/>
<wire x1="58.42" y1="53.34" x2="50.8" y2="53.34" width="0.1524" layer="91"/>
<wire x1="50.8" y1="53.34" x2="50.8" y2="55.88" width="0.1524" layer="91"/>
<pinref part="X3" gate="-1" pin="KL"/>
<wire x1="50.8" y1="55.88" x2="48.26" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="X2" gate="-3" pin="KL"/>
<wire x1="48.26" y1="60.96" x2="50.8" y2="60.96" width="0.1524" layer="91"/>
<wire x1="50.8" y1="60.96" x2="50.8" y2="63.5" width="0.1524" layer="91"/>
<pinref part="JP6" gate="A" pin="3"/>
<wire x1="50.8" y1="63.5" x2="58.42" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="JP6" gate="A" pin="2"/>
<pinref part="X2" gate="-2" pin="KL"/>
<wire x1="58.42" y1="66.04" x2="48.26" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="X2" gate="-1" pin="KL"/>
<wire x1="48.26" y1="71.12" x2="50.8" y2="71.12" width="0.1524" layer="91"/>
<wire x1="50.8" y1="71.12" x2="50.8" y2="68.58" width="0.1524" layer="91"/>
<pinref part="JP6" gate="A" pin="1"/>
<wire x1="50.8" y1="68.58" x2="58.42" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="X1" gate="-3" pin="KL"/>
<wire x1="48.26" y1="76.2" x2="50.8" y2="76.2" width="0.1524" layer="91"/>
<wire x1="50.8" y1="76.2" x2="50.8" y2="78.74" width="0.1524" layer="91"/>
<pinref part="JP5" gate="A" pin="3"/>
<wire x1="50.8" y1="78.74" x2="58.42" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<pinref part="JP5" gate="A" pin="2"/>
<pinref part="X1" gate="-2" pin="KL"/>
<wire x1="58.42" y1="81.28" x2="48.26" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<pinref part="X1" gate="-1" pin="KL"/>
<wire x1="48.26" y1="86.36" x2="50.8" y2="86.36" width="0.1524" layer="91"/>
<wire x1="50.8" y1="86.36" x2="50.8" y2="83.82" width="0.1524" layer="91"/>
<pinref part="JP5" gate="A" pin="1"/>
<wire x1="50.8" y1="83.82" x2="58.42" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="X12" gate="-3" pin="KL"/>
<wire x1="119.38" y1="0" x2="127" y2="0" width="0.1524" layer="91"/>
<wire x1="127" y1="0" x2="127" y2="2.54" width="0.1524" layer="91"/>
<pinref part="JP28" gate="A" pin="3"/>
<wire x1="127" y1="2.54" x2="132.08" y2="2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="JP28" gate="A" pin="2"/>
<pinref part="X12" gate="-2" pin="KL"/>
<wire x1="132.08" y1="5.08" x2="119.38" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="X12" gate="-1" pin="KL"/>
<wire x1="119.38" y1="10.16" x2="127" y2="10.16" width="0.1524" layer="91"/>
<wire x1="127" y1="10.16" x2="127" y2="7.62" width="0.1524" layer="91"/>
<pinref part="JP28" gate="A" pin="1"/>
<wire x1="127" y1="7.62" x2="132.08" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<pinref part="X11" gate="-3" pin="KL"/>
<wire x1="119.38" y1="15.24" x2="124.46" y2="15.24" width="0.1524" layer="91"/>
<wire x1="124.46" y1="15.24" x2="124.46" y2="17.78" width="0.1524" layer="91"/>
<pinref part="JP27" gate="A" pin="3"/>
<wire x1="124.46" y1="17.78" x2="132.08" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<pinref part="JP27" gate="A" pin="2"/>
<pinref part="X11" gate="-2" pin="KL"/>
<wire x1="132.08" y1="20.32" x2="119.38" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<pinref part="X11" gate="-1" pin="KL"/>
<wire x1="119.38" y1="25.4" x2="124.46" y2="25.4" width="0.1524" layer="91"/>
<wire x1="124.46" y1="25.4" x2="124.46" y2="22.86" width="0.1524" layer="91"/>
<pinref part="JP27" gate="A" pin="1"/>
<wire x1="124.46" y1="22.86" x2="132.08" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$37" class="0">
<segment>
<pinref part="X9" gate="-3" pin="KL"/>
<wire x1="119.38" y1="45.72" x2="124.46" y2="45.72" width="0.1524" layer="91"/>
<wire x1="124.46" y1="45.72" x2="124.46" y2="48.26" width="0.1524" layer="91"/>
<pinref part="JP25" gate="A" pin="3"/>
<wire x1="124.46" y1="48.26" x2="132.08" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$38" class="0">
<segment>
<pinref part="JP25" gate="A" pin="2"/>
<pinref part="X9" gate="-2" pin="KL"/>
<wire x1="132.08" y1="50.8" x2="119.38" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$39" class="0">
<segment>
<pinref part="X9" gate="-1" pin="KL"/>
<wire x1="119.38" y1="55.88" x2="124.46" y2="55.88" width="0.1524" layer="91"/>
<wire x1="124.46" y1="55.88" x2="124.46" y2="53.34" width="0.1524" layer="91"/>
<pinref part="JP25" gate="A" pin="1"/>
<wire x1="124.46" y1="53.34" x2="132.08" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$40" class="0">
<segment>
<pinref part="JP24" gate="A" pin="3"/>
<wire x1="132.08" y1="63.5" x2="124.46" y2="63.5" width="0.1524" layer="91"/>
<wire x1="124.46" y1="63.5" x2="124.46" y2="60.96" width="0.1524" layer="91"/>
<pinref part="X8" gate="-3" pin="KL"/>
<wire x1="124.46" y1="60.96" x2="119.38" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$41" class="0">
<segment>
<pinref part="X8" gate="-2" pin="KL"/>
<pinref part="JP24" gate="A" pin="2"/>
<wire x1="119.38" y1="66.04" x2="132.08" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$42" class="0">
<segment>
<pinref part="JP24" gate="A" pin="1"/>
<wire x1="132.08" y1="68.58" x2="124.46" y2="68.58" width="0.1524" layer="91"/>
<wire x1="124.46" y1="68.58" x2="124.46" y2="71.12" width="0.1524" layer="91"/>
<pinref part="X8" gate="-1" pin="KL"/>
<wire x1="124.46" y1="71.12" x2="119.38" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$43" class="0">
<segment>
<pinref part="X7" gate="-3" pin="KL"/>
<wire x1="119.38" y1="76.2" x2="124.46" y2="76.2" width="0.1524" layer="91"/>
<wire x1="124.46" y1="76.2" x2="124.46" y2="78.74" width="0.1524" layer="91"/>
<pinref part="JP23" gate="A" pin="3"/>
<wire x1="124.46" y1="78.74" x2="132.08" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$44" class="0">
<segment>
<pinref part="JP23" gate="A" pin="2"/>
<pinref part="X7" gate="-2" pin="KL"/>
<wire x1="132.08" y1="81.28" x2="119.38" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$45" class="0">
<segment>
<pinref part="X7" gate="-1" pin="KL"/>
<wire x1="119.38" y1="86.36" x2="124.46" y2="86.36" width="0.1524" layer="91"/>
<wire x1="124.46" y1="86.36" x2="124.46" y2="83.82" width="0.1524" layer="91"/>
<pinref part="JP23" gate="A" pin="1"/>
<wire x1="124.46" y1="83.82" x2="132.08" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$46" class="0">
<segment>
<pinref part="X10" gate="-1" pin="KL"/>
<pinref part="JP26" gate="A" pin="1"/>
<wire x1="119.38" y1="38.1" x2="132.08" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$47" class="0">
<segment>
<pinref part="X10" gate="-2" pin="KL"/>
<pinref part="JP26" gate="A" pin="3"/>
<wire x1="119.38" y1="33.02" x2="132.08" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
