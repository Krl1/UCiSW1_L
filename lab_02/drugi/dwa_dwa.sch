<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xc9500xl" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="D7S_S(6:0)" />
        <signal name="CLK" />
        <signal name="CLR">
        </signal>
        <signal name="CE">
        </signal>
        <signal name="wej(3:0)" />
        <signal name="wej(3)" />
        <signal name="wej(2:0)" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="DO(7:0)" />
        <signal name="DO(7)" />
        <signal name="DO(4)" />
        <signal name="DO(2)" />
        <signal name="DO(1)" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="DO(0)" />
        <signal name="DO(3)" />
        <signal name="DO(5)" />
        <signal name="DO(6)" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30(7:0)" />
        <signal name="XLXN_31(7:0)">
        </signal>
        <signal name="RS_RX" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33(7:0)" />
        <port polarity="Output" name="D7S_S(6:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="RS_RX" />
        <blockdef name="licznik">
            <timestamp>2019-10-21T10:57:15</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
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
        <blockdef name="HexTo7Seg">
            <timestamp>2019-10-21T10:27:7</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="RS232_RX">
            <timestamp>2019-10-21T11:11:56</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="320" y1="-160" y2="-160" x1="384" />
        </blockdef>
        <blockdef name="inv4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="160" y1="-96" y2="-96" x1="224" />
            <line x2="160" y1="-160" y2="-160" x1="224" />
            <line x2="160" y1="-224" y2="-224" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-96" y2="-96" x1="0" />
            <line x2="64" y1="-160" y2="-160" x1="0" />
            <line x2="64" y1="-224" y2="-224" x1="0" />
            <line x2="128" y1="-256" y2="-224" x1="64" />
            <line x2="64" y1="-224" y2="-192" x1="128" />
            <line x2="64" y1="-192" y2="-256" x1="64" />
            <circle r="16" cx="144" cy="-32" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="128" y1="-128" y2="-96" x1="64" />
            <line x2="64" y1="-96" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="-128" x1="64" />
            <circle r="16" cx="144" cy="-96" />
            <line x2="128" y1="-192" y2="-160" x1="64" />
            <line x2="64" y1="-160" y2="-128" x1="128" />
            <line x2="64" y1="-128" y2="-192" x1="64" />
            <circle r="16" cx="144" cy="-160" />
            <circle r="16" cx="144" cy="-224" />
        </blockdef>
        <blockdef name="and9">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="192" y1="-320" y2="-320" x1="256" />
            <arc ex="144" ey="-368" sx="144" sy="-272" r="48" cx="144" cy="-320" />
            <line x2="64" y1="-272" y2="-272" x1="144" />
            <line x2="144" y1="-368" y2="-368" x1="64" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-512" y2="-512" x1="0" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-384" y2="-384" x1="0" />
            <line x2="64" y1="-576" y2="-576" x1="0" />
            <line x2="64" y1="-576" y2="-64" x1="64" />
        </blockdef>
        <blockdef name="comp8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="320" y1="-224" y2="-224" x1="384" />
            <rect width="64" x="0" y="-332" height="24" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <rect width="64" x="0" y="-140" height="24" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <block symbolname="licznik" name="XLXI_1">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="CLR" name="CLR" />
            <blockpin signalname="CE" name="CE" />
            <blockpin signalname="wej(2:0)" name="Q(2:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_2">
            <blockpin signalname="wej(3)" name="G" />
        </block>
        <block symbolname="HexTo7Seg" name="XLXI_3">
            <blockpin signalname="wej(3:0)" name="Hex(3:0)" />
            <blockpin signalname="D7S_S(6:0)" name="Displ7S(6:0)" />
        </block>
        <block symbolname="RS232_RX" name="XLXI_4">
            <blockpin signalname="CLR" name="Reset" />
            <blockpin signalname="CLK" name="Clk_XT" />
            <blockpin signalname="XLXN_22" name="Rdy" />
            <blockpin signalname="DO(7:0)" name="DO(7:0)" />
            <blockpin signalname="RS_RX" name="RS_RX" />
        </block>
        <block symbolname="inv4" name="XLXI_6">
            <blockpin signalname="DO(7)" name="I0" />
            <blockpin signalname="DO(4)" name="I1" />
            <blockpin signalname="DO(2)" name="I2" />
            <blockpin signalname="DO(1)" name="I3" />
            <blockpin signalname="XLXN_21" name="O0" />
            <blockpin signalname="XLXN_20" name="O1" />
            <blockpin signalname="XLXN_18" name="O2" />
            <blockpin signalname="XLXN_17" name="O3" />
        </block>
        <block symbolname="and9" name="XLXI_8">
            <blockpin signalname="XLXN_22" name="I0" />
            <blockpin signalname="XLXN_21" name="I1" />
            <blockpin signalname="DO(6)" name="I2" />
            <blockpin signalname="DO(5)" name="I3" />
            <blockpin signalname="XLXN_20" name="I4" />
            <blockpin signalname="DO(3)" name="I5" />
            <blockpin signalname="XLXN_18" name="I6" />
            <blockpin signalname="XLXN_17" name="I7" />
            <blockpin signalname="DO(0)" name="I8" />
            <blockpin signalname="CE" name="O" />
        </block>
        <block symbolname="constant" name="reset">
            <attr value="72" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_31(7:0)" name="O" />
        </block>
        <block symbolname="comp8" name="XLXI_12">
            <blockpin signalname="DO(7:0)" name="A(7:0)" />
            <blockpin signalname="XLXN_31(7:0)" name="B(7:0)" />
            <blockpin signalname="CLR" name="EQ" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1488" y="1392" name="XLXI_3" orien="R0">
        </instance>
        <branch name="D7S_S(6:0)">
            <wire x2="1904" y1="1360" y2="1360" x1="1872" />
        </branch>
        <iomarker fontsize="28" x="1904" y="1360" name="D7S_S(6:0)" orien="R0" />
        <instance x="736" y="1408" name="XLXI_1" orien="R0">
        </instance>
        <branch name="CLK">
            <wire x2="672" y1="1248" y2="1248" x1="640" />
            <wire x2="736" y1="1248" y2="1248" x1="672" />
            <wire x2="736" y1="992" y2="992" x1="672" />
            <wire x2="672" y1="992" y2="1248" x1="672" />
        </branch>
        <branch name="CLR">
            <wire x2="528" y1="1312" y2="1312" x1="512" />
            <wire x2="736" y1="1312" y2="1312" x1="528" />
            <wire x2="512" y1="1312" y2="1376" x1="512" />
            <wire x2="624" y1="1376" y2="1376" x1="512" />
            <wire x2="624" y1="1376" y2="1616" x1="624" />
            <wire x2="736" y1="928" y2="928" x1="528" />
            <wire x2="528" y1="928" y2="1312" x1="528" />
            <wire x2="624" y1="1616" y2="1616" x1="560" />
        </branch>
        <branch name="CE">
            <wire x2="736" y1="1376" y2="1376" x1="688" />
            <wire x2="688" y1="1376" y2="1824" x1="688" />
            <wire x2="2656" y1="1824" y2="1824" x1="688" />
            <wire x2="2656" y1="864" y2="864" x1="2640" />
            <wire x2="2656" y1="864" y2="1824" x1="2656" />
        </branch>
        <branch name="wej(3:0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="1283" type="branch" />
            <wire x2="1264" y1="1232" y2="1283" x1="1264" />
            <wire x2="1264" y1="1283" y2="1328" x1="1264" />
            <wire x2="1264" y1="1328" y2="1488" x1="1264" />
            <wire x2="1264" y1="1488" y2="1616" x1="1264" />
            <wire x2="1376" y1="1232" y2="1232" x1="1264" />
            <wire x2="1376" y1="1232" y2="1360" x1="1376" />
            <wire x2="1488" y1="1360" y2="1360" x1="1376" />
        </branch>
        <instance x="992" y="1648" name="XLXI_2" orien="R0" />
        <bustap x2="1168" y1="1328" y2="1328" x1="1264" />
        <bustap x2="1168" y1="1488" y2="1488" x1="1264" />
        <branch name="wej(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1122" y="1488" type="branch" />
            <wire x2="1056" y1="1488" y2="1520" x1="1056" />
            <wire x2="1122" y1="1488" y2="1488" x1="1056" />
            <wire x2="1168" y1="1488" y2="1488" x1="1122" />
        </branch>
        <branch name="wej(2:0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="1274" type="branch" />
            <wire x2="1136" y1="1248" y2="1248" x1="1120" />
            <wire x2="1136" y1="1248" y2="1274" x1="1136" />
            <wire x2="1136" y1="1274" y2="1328" x1="1136" />
            <wire x2="1168" y1="1328" y2="1328" x1="1136" />
        </branch>
        <instance x="736" y="1024" name="XLXI_4" orien="R0">
        </instance>
        <iomarker fontsize="28" x="640" y="1248" name="CLK" orien="R180" />
        <branch name="DO(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1323" y="928" type="branch" />
            <wire x2="96" y1="560" y2="1520" x1="96" />
            <wire x2="176" y1="1520" y2="1520" x1="96" />
            <wire x2="1536" y1="560" y2="560" x1="96" />
            <wire x2="1536" y1="560" y2="672" x1="1536" />
            <wire x2="1536" y1="672" y2="736" x1="1536" />
            <wire x2="1536" y1="736" y2="800" x1="1536" />
            <wire x2="1536" y1="800" y2="864" x1="1536" />
            <wire x2="1536" y1="864" y2="912" x1="1536" />
            <wire x2="1536" y1="912" y2="928" x1="1536" />
            <wire x2="1536" y1="928" y2="976" x1="1536" />
            <wire x2="1536" y1="976" y2="1024" x1="1536" />
            <wire x2="1536" y1="1024" y2="1072" x1="1536" />
            <wire x2="1536" y1="1072" y2="1120" x1="1536" />
            <wire x2="1184" y1="928" y2="928" x1="1120" />
            <wire x2="1323" y1="928" y2="928" x1="1184" />
            <wire x2="1536" y1="928" y2="928" x1="1323" />
            <wire x2="1200" y1="704" y2="704" x1="1184" />
            <wire x2="1184" y1="704" y2="928" x1="1184" />
        </branch>
        <instance x="1904" y="976" name="XLXI_6" orien="R0" />
        <bustap x2="1632" y1="1072" y2="1072" x1="1536" />
        <bustap x2="1632" y1="1024" y2="1024" x1="1536" />
        <bustap x2="1632" y1="976" y2="976" x1="1536" />
        <bustap x2="1632" y1="912" y2="912" x1="1536" />
        <bustap x2="1632" y1="864" y2="864" x1="1536" />
        <bustap x2="1632" y1="800" y2="800" x1="1536" />
        <bustap x2="1632" y1="736" y2="736" x1="1536" />
        <bustap x2="1632" y1="672" y2="672" x1="1536" />
        <branch name="DO(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1691" y="1072" type="branch" />
            <wire x2="1691" y1="1072" y2="1072" x1="1632" />
            <wire x2="1760" y1="1072" y2="1072" x1="1691" />
            <wire x2="1760" y1="944" y2="1072" x1="1760" />
            <wire x2="1904" y1="944" y2="944" x1="1760" />
        </branch>
        <branch name="DO(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1699" y="912" type="branch" />
            <wire x2="1699" y1="912" y2="912" x1="1632" />
            <wire x2="1760" y1="912" y2="912" x1="1699" />
            <wire x2="1760" y1="880" y2="912" x1="1760" />
            <wire x2="1904" y1="880" y2="880" x1="1760" />
        </branch>
        <branch name="DO(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1716" y="800" type="branch" />
            <wire x2="1716" y1="800" y2="800" x1="1632" />
            <wire x2="1760" y1="800" y2="800" x1="1716" />
            <wire x2="1760" y1="800" y2="816" x1="1760" />
            <wire x2="1904" y1="816" y2="816" x1="1760" />
        </branch>
        <branch name="DO(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1747" y="736" type="branch" />
            <wire x2="1747" y1="736" y2="736" x1="1632" />
            <wire x2="1760" y1="736" y2="736" x1="1747" />
            <wire x2="1760" y1="736" y2="752" x1="1760" />
            <wire x2="1904" y1="752" y2="752" x1="1760" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="2256" y1="752" y2="752" x1="2128" />
            <wire x2="2256" y1="672" y2="752" x1="2256" />
            <wire x2="2384" y1="672" y2="672" x1="2256" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="2272" y1="816" y2="816" x1="2128" />
            <wire x2="2272" y1="736" y2="816" x1="2272" />
            <wire x2="2384" y1="736" y2="736" x1="2272" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="2256" y1="880" y2="880" x1="2128" />
            <wire x2="2256" y1="864" y2="880" x1="2256" />
            <wire x2="2384" y1="864" y2="864" x1="2256" />
        </branch>
        <instance x="2384" y="1184" name="XLXI_8" orien="R0" />
        <branch name="XLXN_21">
            <wire x2="2256" y1="944" y2="944" x1="2128" />
            <wire x2="2256" y1="944" y2="1056" x1="2256" />
            <wire x2="2384" y1="1056" y2="1056" x1="2256" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="1152" y1="992" y2="992" x1="1120" />
            <wire x2="1152" y1="992" y2="1184" x1="1152" />
            <wire x2="2384" y1="1184" y2="1184" x1="1152" />
            <wire x2="2384" y1="1120" y2="1184" x1="2384" />
        </branch>
        <branch name="DO(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1846" y="672" type="branch" />
            <wire x2="1846" y1="672" y2="672" x1="1632" />
            <wire x2="2000" y1="672" y2="672" x1="1846" />
            <wire x2="2000" y1="608" y2="672" x1="2000" />
            <wire x2="2384" y1="608" y2="608" x1="2000" />
        </branch>
        <branch name="DO(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1900" y="656" type="branch" />
            <wire x2="1712" y1="864" y2="864" x1="1632" />
            <wire x2="1712" y1="656" y2="864" x1="1712" />
            <wire x2="1900" y1="656" y2="656" x1="1712" />
            <wire x2="2192" y1="656" y2="656" x1="1900" />
            <wire x2="2192" y1="656" y2="800" x1="2192" />
            <wire x2="2384" y1="800" y2="800" x1="2192" />
        </branch>
        <branch name="DO(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1682" y="976" type="branch" />
            <wire x2="1682" y1="976" y2="976" x1="1632" />
            <wire x2="1696" y1="976" y2="976" x1="1682" />
            <wire x2="1696" y1="976" y2="1040" x1="1696" />
            <wire x2="2192" y1="1040" y2="1040" x1="1696" />
            <wire x2="2192" y1="928" y2="1040" x1="2192" />
            <wire x2="2384" y1="928" y2="928" x1="2192" />
        </branch>
        <branch name="DO(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1827" y="1024" type="branch" />
            <wire x2="1827" y1="1024" y2="1024" x1="1632" />
            <wire x2="2000" y1="1024" y2="1024" x1="1827" />
            <wire x2="2000" y1="992" y2="1024" x1="2000" />
            <wire x2="2384" y1="992" y2="992" x1="2000" />
        </branch>
        <branch name="XLXN_31(7:0)">
            <wire x2="176" y1="1712" y2="1712" x1="160" />
            <wire x2="160" y1="1712" y2="1840" x1="160" />
            <wire x2="272" y1="1840" y2="1840" x1="160" />
            <wire x2="272" y1="1840" y2="2064" x1="272" />
            <wire x2="224" y1="2064" y2="2064" x1="208" />
            <wire x2="272" y1="2064" y2="2064" x1="224" />
            <wire x2="224" y1="2064" y2="2272" x1="224" />
            <wire x2="224" y1="2272" y2="2272" x1="208" />
        </branch>
        <instance x="64" y="2240" name="reset" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1280" y="864" name="RS_RX" orien="R0" />
        <branch name="RS_RX">
            <wire x2="1280" y1="864" y2="864" x1="1120" />
        </branch>
        <instance x="176" y="1840" name="XLXI_12" orien="R0" />
    </sheet>
</drawing>