<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xc9500xl" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(7:0)" />
        <signal name="XLXN_2" />
        <signal name="CLK" />
        <signal name="Reset" />
        <signal name="XLXN_5" />
        <signal name="PS2_Data" />
        <signal name="PS2_Clk" />
        <signal name="y" />
        <signal name="XLXN_9" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="Reset" />
        <port polarity="Input" name="PS2_Data" />
        <port polarity="Input" name="PS2_Clk" />
        <port polarity="Output" name="y" />
        <blockdef name="zamek">
            <timestamp>2019-11-21T14:17:18</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <blockdef name="PS2_RX">
            <timestamp>2019-11-21T13:2:26</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <block symbolname="zamek" name="XLXI_1">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="XLXN_2" name="DO_Rdy" />
            <blockpin signalname="XLXN_1(7:0)" name="x(7:0)" />
            <blockpin signalname="y" name="y" />
        </block>
        <block symbolname="PS2_RX" name="XLXI_2">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="CLK" name="Clk" />
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="XLXN_2" name="DO_Rdy" />
            <blockpin signalname="XLXN_1(7:0)" name="DO(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2336" y="1248" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1632" y="1376" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_1(7:0)">
            <wire x2="2176" y1="1152" y2="1152" x1="2016" />
            <wire x2="2176" y1="1152" y2="1216" x1="2176" />
            <wire x2="2336" y1="1216" y2="1216" x1="2176" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="2080" y1="1216" y2="1216" x1="2016" />
            <wire x2="2080" y1="1168" y2="1216" x1="2080" />
            <wire x2="2256" y1="1168" y2="1168" x1="2080" />
            <wire x2="2256" y1="1152" y2="1168" x1="2256" />
            <wire x2="2336" y1="1152" y2="1152" x1="2256" />
        </branch>
        <branch name="CLK">
            <wire x2="1616" y1="1568" y2="1568" x1="1552" />
            <wire x2="1632" y1="1344" y2="1344" x1="1616" />
            <wire x2="1616" y1="1344" y2="1488" x1="1616" />
            <wire x2="1616" y1="1488" y2="1568" x1="1616" />
            <wire x2="2128" y1="1488" y2="1488" x1="1616" />
            <wire x2="2336" y1="1024" y2="1024" x1="2128" />
            <wire x2="2128" y1="1024" y2="1488" x1="2128" />
        </branch>
        <iomarker fontsize="28" x="1552" y="1568" name="CLK" orien="R180" />
        <branch name="Reset">
            <wire x2="1584" y1="1280" y2="1280" x1="1520" />
            <wire x2="1632" y1="1280" y2="1280" x1="1584" />
            <wire x2="2224" y1="928" y2="928" x1="1584" />
            <wire x2="2224" y1="928" y2="1088" x1="2224" />
            <wire x2="2336" y1="1088" y2="1088" x1="2224" />
            <wire x2="1584" y1="928" y2="1280" x1="1584" />
        </branch>
        <iomarker fontsize="28" x="1520" y="1280" name="Reset" orien="R180" />
        <branch name="PS2_Data">
            <wire x2="1616" y1="1216" y2="1216" x1="1536" />
            <wire x2="1632" y1="1216" y2="1216" x1="1616" />
        </branch>
        <branch name="PS2_Clk">
            <wire x2="1616" y1="1152" y2="1152" x1="1536" />
            <wire x2="1632" y1="1152" y2="1152" x1="1616" />
        </branch>
        <iomarker fontsize="28" x="1536" y="1152" name="PS2_Clk" orien="R180" />
        <iomarker fontsize="28" x="1536" y="1216" name="PS2_Data" orien="R180" />
        <branch name="y">
            <wire x2="2736" y1="1024" y2="1024" x1="2720" />
            <wire x2="2864" y1="976" y2="976" x1="2736" />
            <wire x2="2736" y1="976" y2="1024" x1="2736" />
        </branch>
        <iomarker fontsize="28" x="2864" y="976" name="y" orien="R0" />
    </sheet>
</drawing>