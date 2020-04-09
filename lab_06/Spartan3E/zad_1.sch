<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(7:0)" />
        <signal name="PS2_Clk" />
        <signal name="Clk_50MHz" />
        <signal name="PS2_Data" />
        <signal name="y" />
        <signal name="reset" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_17(15:0)" />
        <signal name="LCD_E" />
        <signal name="LCD_RS" />
        <signal name="LCD_RW" />
        <signal name="LCD_D(3:0)" />
        <signal name="SF_CE" />
        <signal name="line(63:0)" />
        <signal name="line(63:4)" />
        <signal name="line(3:0)" />
        <port polarity="Input" name="PS2_Clk" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Input" name="PS2_Data" />
        <port polarity="Output" name="y" />
        <port polarity="Input" name="reset" />
        <port polarity="Output" name="LCD_E" />
        <port polarity="Output" name="LCD_RS" />
        <port polarity="Output" name="LCD_RW" />
        <port polarity="BiDirectional" name="LCD_D(3:0)" />
        <port polarity="Output" name="SF_CE" />
        <blockdef name="PS2_Kbd">
            <timestamp>2019-12-16T11:0:31</timestamp>
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="zamek">
            <timestamp>2019-12-16T11:42:21</timestamp>
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="256" x="64" y="-256" height="384" />
        </blockdef>
        <blockdef name="LCD1x64">
            <timestamp>2019-12-16T11:12:34</timestamp>
            <line x2="416" y1="-288" y2="-288" x1="352" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="64" x="352" y="-108" height="24" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
            <rect width="288" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <block symbolname="PS2_Kbd" name="XLXI_4">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin name="E0" />
            <blockpin signalname="XLXN_7" name="F0" />
            <blockpin signalname="XLXN_8" name="DO_Rdy" />
            <blockpin signalname="XLXN_1(7:0)" name="DO(7:0)" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
        </block>
        <block symbolname="zamek" name="XLXI_6">
            <blockpin signalname="Clk_50MHz" name="CLK" />
            <blockpin signalname="reset" name="Reset" />
            <blockpin signalname="XLXN_8" name="DO_Rdy" />
            <blockpin signalname="XLXN_7" name="F0" />
            <blockpin signalname="XLXN_1(7:0)" name="x(7:0)" />
            <blockpin signalname="y" name="y" />
            <blockpin signalname="line(3:0)" name="nr(3:0)" />
        </block>
        <block symbolname="LCD1x64" name="XLXI_7">
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="reset" name="Reset" />
            <blockpin signalname="line(63:0)" name="Line(63:0)" />
            <blockpin signalname="XLXN_17(15:0)" name="Blank(15:0)" />
            <blockpin signalname="LCD_D(3:0)" name="LCD_D(3:0)" />
            <blockpin signalname="LCD_E" name="LCD_E" />
            <blockpin signalname="LCD_RW" name="LCD_RW" />
            <blockpin signalname="LCD_RS" name="LCD_RS" />
            <blockpin signalname="SF_CE" name="SF_CE" />
        </block>
        <block symbolname="constant" name="cnst(63:4)">
            <attr value="0" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="line(63:4)" name="O" />
        </block>
        <block symbolname="constant" name="blnk(15:0)">
            <attr value="FFFE" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_17(15:0)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_1(7:0)">
            <wire x2="1200" y1="1184" y2="1184" x1="1088" />
            <wire x2="1200" y1="1184" y2="1200" x1="1200" />
            <wire x2="1328" y1="1200" y2="1200" x1="1200" />
        </branch>
        <branch name="PS2_Clk">
            <wire x2="704" y1="1184" y2="1184" x1="672" />
        </branch>
        <iomarker fontsize="28" x="672" y="1184" name="PS2_Clk" orien="R180" />
        <branch name="Clk_50MHz">
            <wire x2="384" y1="1008" y2="1376" x1="384" />
            <wire x2="640" y1="1376" y2="1376" x1="384" />
            <wire x2="688" y1="1376" y2="1376" x1="640" />
            <wire x2="704" y1="1376" y2="1376" x1="688" />
            <wire x2="640" y1="1376" y2="1488" x1="640" />
            <wire x2="1824" y1="1488" y2="1488" x1="640" />
            <wire x2="1328" y1="1008" y2="1008" x1="384" />
            <wire x2="688" y1="1312" y2="1312" x1="624" />
            <wire x2="704" y1="1312" y2="1312" x1="688" />
            <wire x2="688" y1="1312" y2="1376" x1="688" />
            <wire x2="1824" y1="1168" y2="1488" x1="1824" />
            <wire x2="2032" y1="1168" y2="1168" x1="1824" />
        </branch>
        <branch name="PS2_Data">
            <wire x2="704" y1="1248" y2="1248" x1="672" />
        </branch>
        <iomarker fontsize="28" x="672" y="1248" name="PS2_Data" orien="R180" />
        <iomarker fontsize="28" x="624" y="1312" name="Clk_50MHz" orien="R180" />
        <branch name="y">
            <wire x2="1856" y1="1008" y2="1008" x1="1712" />
        </branch>
        <iomarker fontsize="28" x="1296" y="1072" name="reset" orien="R180" />
        <instance x="704" y="1408" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1328" y="1232" name="XLXI_6" orien="R0">
        </instance>
        <branch name="XLXN_7">
            <wire x2="1200" y1="1312" y2="1312" x1="1088" />
            <wire x2="1200" y1="1264" y2="1312" x1="1200" />
            <wire x2="1328" y1="1264" y2="1264" x1="1200" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1184" y1="1376" y2="1376" x1="1088" />
            <wire x2="1184" y1="1136" y2="1376" x1="1184" />
            <wire x2="1328" y1="1136" y2="1136" x1="1184" />
        </branch>
        <instance x="2032" y="1200" name="XLXI_7" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1856" y="1008" name="y" orien="R0" />
        <instance x="768" y="816" name="blnk(15:0)" orien="R0">
        </instance>
        <branch name="reset">
            <wire x2="1312" y1="1184" y2="1184" x1="1248" />
            <wire x2="1248" y1="1184" y2="1472" x1="1248" />
            <wire x2="2016" y1="1472" y2="1472" x1="1248" />
            <wire x2="1312" y1="1072" y2="1072" x1="1296" />
            <wire x2="1328" y1="1072" y2="1072" x1="1312" />
            <wire x2="1312" y1="1072" y2="1184" x1="1312" />
            <wire x2="2032" y1="1104" y2="1104" x1="2016" />
            <wire x2="2016" y1="1104" y2="1472" x1="2016" />
        </branch>
        <branch name="LCD_E">
            <wire x2="2480" y1="912" y2="912" x1="2448" />
        </branch>
        <iomarker fontsize="28" x="2480" y="912" name="LCD_E" orien="R0" />
        <branch name="LCD_RS">
            <wire x2="2480" y1="976" y2="976" x1="2448" />
        </branch>
        <iomarker fontsize="28" x="2480" y="976" name="LCD_RS" orien="R0" />
        <branch name="LCD_RW">
            <wire x2="2480" y1="1040" y2="1040" x1="2448" />
        </branch>
        <iomarker fontsize="28" x="2480" y="1040" name="LCD_RW" orien="R0" />
        <branch name="LCD_D(3:0)">
            <wire x2="2480" y1="1104" y2="1104" x1="2448" />
        </branch>
        <iomarker fontsize="28" x="2480" y="1104" name="LCD_D(3:0)" orien="R0" />
        <branch name="SF_CE">
            <wire x2="2480" y1="1168" y2="1168" x1="2448" />
        </branch>
        <iomarker fontsize="28" x="2480" y="1168" name="SF_CE" orien="R0" />
        <branch name="XLXN_17(15:0)">
            <wire x2="912" y1="816" y2="848" x1="912" />
            <wire x2="2000" y1="816" y2="816" x1="912" />
            <wire x2="2000" y1="816" y2="976" x1="2000" />
            <wire x2="2032" y1="976" y2="976" x1="2000" />
        </branch>
        <branch name="line(63:0)">
            <wire x2="1888" y1="592" y2="640" x1="1888" />
            <wire x2="1888" y1="640" y2="736" x1="1888" />
            <wire x2="1888" y1="736" y2="912" x1="1888" />
            <wire x2="2032" y1="912" y2="912" x1="1888" />
        </branch>
        <bustap x2="1792" y1="640" y2="640" x1="1888" />
        <bustap x2="1792" y1="736" y2="736" x1="1888" />
        <branch name="line(63:4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1452" y="640" type="branch" />
            <wire x2="1456" y1="640" y2="640" x1="1200" />
            <wire x2="1792" y1="640" y2="640" x1="1456" />
        </branch>
        <branch name="line(3:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="1069" type="branch" />
            <wire x2="1744" y1="1328" y2="1328" x1="1712" />
            <wire x2="1792" y1="736" y2="736" x1="1744" />
            <wire x2="1744" y1="736" y2="1072" x1="1744" />
            <wire x2="1744" y1="1072" y2="1328" x1="1744" />
        </branch>
        <instance x="1056" y="608" name="cnst(63:4)" orien="R0">
        </instance>
    </sheet>
</drawing>