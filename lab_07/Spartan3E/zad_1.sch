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
        <signal name="XLXN_7" />
        <signal name="reset" />
        <signal name="SF_CE" />
        <signal name="LCD_D(3:0)" />
        <signal name="LCD_RW" />
        <signal name="LCD_RS" />
        <signal name="LCD_E" />
        <signal name="XLXN_25" />
        <signal name="XLXN_31" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33(7:0)" />
        <signal name="XLXN_34" />
        <port polarity="Input" name="PS2_Clk" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Input" name="PS2_Data" />
        <port polarity="Output" name="y" />
        <port polarity="Input" name="reset" />
        <port polarity="Output" name="SF_CE" />
        <port polarity="BiDirectional" name="LCD_D(3:0)" />
        <port polarity="Output" name="LCD_RW" />
        <port polarity="Output" name="LCD_RS" />
        <port polarity="Output" name="LCD_E" />
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
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <blockdef name="LCDWrite">
            <timestamp>2020-1-20T10:10:49</timestamp>
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="zamek">
            <timestamp>2020-1-20T12:31:16</timestamp>
            <line x2="384" y1="288" y2="288" x1="320" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <line x2="384" y1="160" y2="160" x1="320" />
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="256" x="64" y="-256" height="576" />
        </blockdef>
        <block symbolname="PS2_Kbd" name="XLXI_4">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin name="E0" />
            <blockpin signalname="XLXN_7" name="F0" />
            <blockpin signalname="XLXN_31" name="DO_Rdy" />
            <blockpin signalname="XLXN_1(7:0)" name="DO(7:0)" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
        </block>
        <block symbolname="zamek" name="XLXI_9">
            <blockpin signalname="Clk_50MHz" name="CLK" />
            <blockpin signalname="reset" name="Reset" />
            <blockpin signalname="XLXN_31" name="DO_Rdy" />
            <blockpin signalname="XLXN_7" name="F0" />
            <blockpin signalname="XLXN_32" name="Busy" />
            <blockpin signalname="XLXN_1(7:0)" name="x(7:0)" />
            <blockpin signalname="y" name="y" />
            <blockpin signalname="XLXN_25" name="we" />
            <blockpin signalname="XLXN_34" name="DnI" />
            <blockpin signalname="XLXN_33(7:0)" name="nr(7:0)" />
        </block>
        <block symbolname="LCDWrite" name="XLXI_8">
            <blockpin signalname="XLXN_25" name="WE" />
            <blockpin signalname="XLXN_34" name="DnI" />
            <blockpin signalname="reset" name="Reset" />
            <blockpin name="Cursor" />
            <blockpin name="Blink" />
            <blockpin signalname="XLXN_33(7:0)" name="DI(7:0)" />
            <blockpin signalname="LCD_E" name="LCD_E" />
            <blockpin signalname="LCD_RS" name="LCD_RS" />
            <blockpin signalname="LCD_RW" name="LCD_RW" />
            <blockpin signalname="LCD_D(3:0)" name="LCD_D(3:0)" />
            <blockpin signalname="SF_CE" name="SF_CE" />
            <blockpin signalname="XLXN_32" name="Busy" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
        </block>
        <block symbolname="constant" name="XLXI_14">
            <attr value="1" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="PS2_Clk">
            <wire x2="704" y1="1184" y2="1184" x1="672" />
        </branch>
        <iomarker fontsize="28" x="672" y="1184" name="PS2_Clk" orien="R180" />
        <branch name="Clk_50MHz">
            <wire x2="384" y1="1008" y2="1376" x1="384" />
            <wire x2="640" y1="1376" y2="1376" x1="384" />
            <wire x2="688" y1="1376" y2="1376" x1="640" />
            <wire x2="704" y1="1376" y2="1376" x1="688" />
            <wire x2="640" y1="1376" y2="1840" x1="640" />
            <wire x2="2240" y1="1840" y2="1840" x1="640" />
            <wire x2="1328" y1="1008" y2="1008" x1="384" />
            <wire x2="688" y1="1312" y2="1312" x1="624" />
            <wire x2="704" y1="1312" y2="1312" x1="688" />
            <wire x2="688" y1="1312" y2="1376" x1="688" />
            <wire x2="2240" y1="1280" y2="1344" x1="2240" />
            <wire x2="2272" y1="1344" y2="1344" x1="2240" />
            <wire x2="2240" y1="1344" y2="1840" x1="2240" />
            <wire x2="2272" y1="1280" y2="1280" x1="2240" />
        </branch>
        <branch name="PS2_Data">
            <wire x2="704" y1="1248" y2="1248" x1="672" />
        </branch>
        <iomarker fontsize="28" x="672" y="1248" name="PS2_Data" orien="R180" />
        <iomarker fontsize="28" x="624" y="1312" name="Clk_50MHz" orien="R180" />
        <branch name="y">
            <wire x2="1856" y1="1008" y2="1008" x1="1712" />
        </branch>
        <instance x="704" y="1408" name="XLXI_4" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1856" y="1008" name="y" orien="R0" />
        <branch name="XLXN_7">
            <wire x2="1200" y1="1312" y2="1312" x1="1088" />
            <wire x2="1200" y1="1264" y2="1312" x1="1200" />
            <wire x2="1328" y1="1264" y2="1264" x1="1200" />
        </branch>
        <branch name="XLXN_1(7:0)">
            <wire x2="1200" y1="1184" y2="1184" x1="1088" />
            <wire x2="1200" y1="1184" y2="1200" x1="1200" />
            <wire x2="1328" y1="1200" y2="1200" x1="1200" />
        </branch>
        <instance x="1328" y="1232" name="XLXI_9" orien="R0">
        </instance>
        <instance x="2272" y="1376" name="XLXI_8" orien="R0">
        </instance>
        <branch name="SF_CE">
            <wire x2="2720" y1="1152" y2="1152" x1="2656" />
        </branch>
        <branch name="LCD_D(3:0)">
            <wire x2="2736" y1="1088" y2="1088" x1="2656" />
        </branch>
        <branch name="LCD_RW">
            <wire x2="2688" y1="1024" y2="1024" x1="2656" />
        </branch>
        <branch name="LCD_RS">
            <wire x2="2688" y1="960" y2="960" x1="2656" />
        </branch>
        <branch name="LCD_E">
            <wire x2="2688" y1="896" y2="896" x1="2656" />
        </branch>
        <iomarker fontsize="28" x="2688" y="1024" name="LCD_RW" orien="R0" />
        <iomarker fontsize="28" x="2688" y="960" name="LCD_RS" orien="R0" />
        <iomarker fontsize="28" x="2688" y="896" name="LCD_E" orien="R0" />
        <branch name="XLXN_25">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="1185" type="branch" />
            <wire x2="2112" y1="1392" y2="1392" x1="1712" />
            <wire x2="2272" y1="896" y2="896" x1="2112" />
            <wire x2="2112" y1="896" y2="1184" x1="2112" />
            <wire x2="2112" y1="1184" y2="1392" x1="2112" />
        </branch>
        <iomarker fontsize="28" x="1200" y="1072" name="reset" orien="R180" />
        <instance x="2080" y="592" name="XLXI_14" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2736" y="1088" name="LCD_D(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2720" y="1152" name="SF_CE" orien="R0" />
        <branch name="XLXN_31">
            <wire x2="1296" y1="1376" y2="1376" x1="1088" />
            <wire x2="1328" y1="1136" y2="1136" x1="1296" />
            <wire x2="1296" y1="1136" y2="1376" x1="1296" />
        </branch>
        <branch name="reset">
            <wire x2="1248" y1="1072" y2="1072" x1="1200" />
            <wire x2="1328" y1="1072" y2="1072" x1="1248" />
            <wire x2="1248" y1="1072" y2="1600" x1="1248" />
            <wire x2="1328" y1="1600" y2="1600" x1="1248" />
            <wire x2="1328" y1="1600" y2="1632" x1="1328" />
            <wire x2="2016" y1="1632" y2="1632" x1="1328" />
            <wire x2="2272" y1="1216" y2="1216" x1="2016" />
            <wire x2="2016" y1="1216" y2="1632" x1="2016" />
        </branch>
        <branch name="XLXN_32">
            <wire x2="1296" y1="1456" y2="1728" x1="1296" />
            <wire x2="2656" y1="1728" y2="1728" x1="1296" />
            <wire x2="1328" y1="1456" y2="1456" x1="1296" />
            <wire x2="2656" y1="1344" y2="1728" x1="2656" />
        </branch>
        <branch name="XLXN_33(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="1187" type="branch" />
            <wire x2="2032" y1="1328" y2="1328" x1="1712" />
            <wire x2="2272" y1="1024" y2="1024" x1="2032" />
            <wire x2="2032" y1="1024" y2="1184" x1="2032" />
            <wire x2="2032" y1="1184" y2="1328" x1="2032" />
        </branch>
        <branch name="XLXN_34">
            <wire x2="1984" y1="1520" y2="1520" x1="1712" />
            <wire x2="1984" y1="960" y2="1520" x1="1984" />
            <wire x2="2272" y1="960" y2="960" x1="1984" />
        </branch>
    </sheet>
</drawing>