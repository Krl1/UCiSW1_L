<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xc9500xl" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="X(3:0)" />
        <signal name="XLXN_2(3:0)" />
        <signal name="D7S_S(6:0)" />
        <port polarity="Input" name="X(3:0)" />
        <port polarity="Output" name="D7S_S(6:0)" />
        <blockdef name="vhdl_modul_1">
            <timestamp>2019-11-4T10:40:35</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="HexTo7Seg">
            <timestamp>2019-11-4T10:42:58</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="vhdl_modul_1" name="XLXI_1">
            <blockpin signalname="X(3:0)" name="X(3:0)" />
            <blockpin signalname="XLXN_2(3:0)" name="Y(3:0)" />
        </block>
        <block symbolname="HexTo7Seg" name="XLXI_2">
            <blockpin signalname="XLXN_2(3:0)" name="Hex(3:0)" />
            <blockpin signalname="D7S_S(6:0)" name="Displ7S(6:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1728" y="1376" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1008" y="1376" name="XLXI_1" orien="R0">
        </instance>
        <branch name="X(3:0)">
            <wire x2="1008" y1="1344" y2="1344" x1="976" />
        </branch>
        <iomarker fontsize="28" x="976" y="1344" name="X(3:0)" orien="R180" />
        <branch name="XLXN_2(3:0)">
            <wire x2="1728" y1="1344" y2="1344" x1="1392" />
        </branch>
        <branch name="D7S_S(6:0)">
            <wire x2="2144" y1="1344" y2="1344" x1="2112" />
        </branch>
        <iomarker fontsize="28" x="2144" y="1344" name="D7S_S(6:0)" orien="R0" />
    </sheet>
</drawing>