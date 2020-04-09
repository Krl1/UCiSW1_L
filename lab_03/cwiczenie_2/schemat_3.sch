<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xc9500xl" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="Hex(3:0)" />
        <signal name="Hex(3)" />
        <signal name="Hex(2:0)" />
        <signal name="XLXN_7(3:0)" />
        <signal name="D7S_S(6:0)" />
        <signal name="XLXN_9(7:0)" />
        <signal name="XLXN_10" />
        <signal name="RS_RX" />
        <signal name="CLK" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <port polarity="Output" name="D7S_S(6:0)" />
        <port polarity="Input" name="RS_RX" />
        <port polarity="Input" name="CLK" />
        <blockdef name="vhdl_modul_2">
            <timestamp>2019-11-4T12:3:16</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-64" height="256" />
        </blockdef>
        <blockdef name="RS232_RX">
            <timestamp>2019-11-4T12:6:22</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="320" y1="-160" y2="-160" x1="384" />
        </blockdef>
        <blockdef name="VHDL_modul_3_klawisze">
            <timestamp>2019-11-4T12:26:48</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-128" height="192" />
        </blockdef>
        <blockdef name="HexTo7Seg">
            <timestamp>2019-11-4T12:17:3</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-96" x1="64" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="64" y1="-64" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="vhdl_modul_2" name="XLXI_1">
            <blockpin signalname="Hex(2:0)" name="OUTPUT(2:0)" />
            <blockpin signalname="XLXN_1" name="CLR" />
            <blockpin signalname="XLXN_2" name="CE" />
            <blockpin signalname="CLK" name="CLK" />
        </block>
        <block symbolname="RS232_RX" name="XLXI_2">
            <blockpin signalname="CLK" name="Reset" />
            <blockpin signalname="CLK" name="Clk_XT" />
            <blockpin signalname="XLXN_10" name="Rdy" />
            <blockpin signalname="XLXN_9(7:0)" name="DO(7:0)" />
            <blockpin signalname="RS_RX" name="RS_RX" />
        </block>
        <block symbolname="VHDL_modul_3_klawisze" name="XLXI_3">
            <blockpin signalname="XLXN_9(7:0)" name="WEJ(7:0)" />
            <blockpin signalname="XLXN_1" name="CLR" />
            <blockpin signalname="XLXN_2" name="CE" />
            <blockpin signalname="XLXN_10" name="RD" />
        </block>
        <block symbolname="HexTo7Seg" name="XLXI_4">
            <blockpin signalname="Hex(3:0)" name="Hex(3:0)" />
            <blockpin signalname="D7S_S(6:0)" name="Displ7S(6:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_5">
            <blockpin signalname="Hex(3)" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1088" y="1440" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1728" y1="1344" y2="1344" x1="1472" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1728" y1="1408" y2="1408" x1="1472" />
        </branch>
        <instance x="1728" y="1312" name="XLXI_1" orien="R0">
        </instance>
        <branch name="Hex(3:0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2368" y="1413" type="branch" />
            <wire x2="2432" y1="1264" y2="1264" x1="2368" />
            <wire x2="2368" y1="1264" y2="1296" x1="2368" />
            <wire x2="2368" y1="1296" y2="1413" x1="2368" />
            <wire x2="2368" y1="1413" y2="1536" x1="2368" />
            <wire x2="2368" y1="1536" y2="1632" x1="2368" />
        </branch>
        <bustap x2="2272" y1="1296" y2="1296" x1="2368" />
        <bustap x2="2272" y1="1536" y2="1536" x1="2368" />
        <instance x="2112" y="1728" name="XLXI_5" orien="R0" />
        <branch name="Hex(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2216" y="1536" type="branch" />
            <wire x2="2176" y1="1536" y2="1600" x1="2176" />
            <wire x2="2216" y1="1536" y2="1536" x1="2176" />
            <wire x2="2272" y1="1536" y2="1536" x1="2216" />
        </branch>
        <branch name="Hex(2:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2168" y="1280" type="branch" />
            <wire x2="2168" y1="1280" y2="1280" x1="2112" />
            <wire x2="2192" y1="1280" y2="1280" x1="2168" />
            <wire x2="2192" y1="1280" y2="1296" x1="2192" />
            <wire x2="2272" y1="1296" y2="1296" x1="2192" />
        </branch>
        <instance x="2432" y="1296" name="XLXI_4" orien="R0">
        </instance>
        <branch name="D7S_S(6:0)">
            <wire x2="2848" y1="1264" y2="1264" x1="2816" />
        </branch>
        <iomarker fontsize="28" x="2848" y="1264" name="D7S_S(6:0)" orien="R0" />
        <instance x="480" y="1440" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_9(7:0)">
            <wire x2="1088" y1="1344" y2="1344" x1="864" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="976" y1="1408" y2="1408" x1="864" />
            <wire x2="976" y1="1408" y2="1472" x1="976" />
            <wire x2="1088" y1="1472" y2="1472" x1="976" />
        </branch>
        <iomarker fontsize="28" x="912" y="1120" name="RS_RX" orien="R0" />
        <branch name="RS_RX">
            <wire x2="880" y1="1280" y2="1280" x1="864" />
            <wire x2="912" y1="1120" y2="1120" x1="880" />
            <wire x2="880" y1="1120" y2="1280" x1="880" />
        </branch>
        <iomarker fontsize="28" x="288" y="1408" name="CLK" orien="R180" />
        <branch name="CLK">
            <wire x2="368" y1="1408" y2="1408" x1="288" />
            <wire x2="368" y1="1408" y2="1568" x1="368" />
            <wire x2="1536" y1="1568" y2="1568" x1="368" />
            <wire x2="480" y1="1408" y2="1408" x1="368" />
            <wire x2="1728" y1="1472" y2="1472" x1="1536" />
            <wire x2="1536" y1="1472" y2="1568" x1="1536" />
        </branch>
        <branch name="CLK">
            <wire x2="480" y1="1344" y2="1344" x1="464" />
        </branch>
    </sheet>
</drawing>