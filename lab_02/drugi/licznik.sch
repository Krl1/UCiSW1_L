<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xc9500xl" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="Q(0)" />
        <signal name="XLXN_4" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_9" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_15" />
        <signal name="XLXN_20" />
        <signal name="CLK" />
        <signal name="CLR" />
        <signal name="CE" />
        <signal name="Q(2:0)" />
        <signal name="Q(1)" />
        <signal name="Q(2)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="CLR" />
        <port polarity="Input" name="CE" />
        <port polarity="Output" name="Q(2:0)" />
        <blockdef name="fdce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="fdce" name="XLXI_2">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="CE" name="CE" />
            <blockpin signalname="CLR" name="CLR" />
            <blockpin signalname="XLXN_4" name="D" />
            <blockpin signalname="Q(1)" name="Q" />
        </block>
        <block symbolname="fdce" name="XLXI_3">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="CE" name="CE" />
            <blockpin signalname="CLR" name="CLR" />
            <blockpin signalname="XLXN_1" name="D" />
            <blockpin signalname="Q(2)" name="Q" />
        </block>
        <block symbolname="fdce" name="XLXI_4">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="CE" name="CE" />
            <blockpin signalname="CLR" name="CLR" />
            <blockpin signalname="XLXN_15" name="D" />
            <blockpin signalname="Q(0)" name="Q" />
        </block>
        <block symbolname="xor2" name="XLXI_5">
            <blockpin signalname="Q(0)" name="I0" />
            <blockpin signalname="Q(2)" name="I1" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_6">
            <blockpin signalname="XLXN_6" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_7">
            <blockpin signalname="XLXN_9" name="I0" />
            <blockpin signalname="Q(1)" name="I1" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_8">
            <blockpin signalname="XLXN_12" name="I0" />
            <blockpin signalname="XLXN_11" name="I1" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_9">
            <blockpin signalname="Q(0)" name="I" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="Q(1)" name="I" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_11">
            <blockpin signalname="Q(2)" name="I" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_13">
            <blockpin signalname="XLXN_11" name="I0" />
            <blockpin signalname="Q(2)" name="I1" />
            <blockpin signalname="XLXN_20" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_12">
            <blockpin signalname="XLXN_20" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="832" y="1216" name="XLXI_3" orien="R0" />
        <instance x="2496" y="1216" name="XLXI_4" orien="R0" />
        <text style="fontsize:60;fontname:Arial" x="1016" y="1020">2</text>
        <text style="fontsize:60;fontname:Arial" x="1824" y="1020">1</text>
        <text style="fontsize:60;fontname:Arial" x="2676" y="1020">0</text>
        <instance x="432" y="1056" name="XLXI_5" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="832" y1="960" y2="960" x1="688" />
        </branch>
        <branch name="Q(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3012" y="960" type="branch" />
            <wire x2="400" y1="720" y2="992" x1="400" />
            <wire x2="432" y1="992" y2="992" x1="400" />
            <wire x2="2896" y1="720" y2="720" x1="400" />
            <wire x2="2896" y1="720" y2="960" x1="2896" />
            <wire x2="2896" y1="960" y2="1472" x1="2896" />
            <wire x2="3008" y1="960" y2="960" x1="2896" />
            <wire x2="3104" y1="960" y2="960" x1="3008" />
            <wire x2="768" y1="1376" y2="1472" x1="768" />
            <wire x2="2896" y1="1472" y2="1472" x1="768" />
            <wire x2="2896" y1="960" y2="960" x1="2880" />
        </branch>
        <instance x="1024" y="1440" name="XLXI_7" orien="R0" />
        <branch name="XLXN_7">
            <wire x2="1312" y1="1344" y2="1344" x1="1280" />
            <wire x2="2096" y1="800" y2="800" x1="1312" />
            <wire x2="2096" y1="800" y2="928" x1="2096" />
            <wire x2="2208" y1="928" y2="928" x1="2096" />
            <wire x2="1312" y1="800" y2="928" x1="1312" />
            <wire x2="1312" y1="928" y2="1344" x1="1312" />
            <wire x2="1360" y1="928" y2="928" x1="1312" />
        </branch>
        <text style="fontsize:48;fontname:Arial" x="1132" y="1340">1</text>
        <branch name="XLXN_9">
            <wire x2="1024" y1="1376" y2="1376" x1="992" />
        </branch>
        <instance x="768" y="1408" name="XLXI_9" orien="R0" />
        <instance x="1088" y="1696" name="XLXI_8" orien="R0" />
        <text style="fontsize:48;fontname:Arial" x="1188" y="1596">2</text>
        <branch name="XLXN_11">
            <wire x2="1056" y1="1568" y2="1568" x1="1008" />
            <wire x2="1088" y1="1568" y2="1568" x1="1056" />
            <wire x2="1056" y1="1568" y2="1728" x1="1056" />
            <wire x2="1440" y1="1728" y2="1728" x1="1056" />
            <wire x2="1440" y1="1344" y2="1728" x1="1440" />
            <wire x2="1872" y1="1344" y2="1344" x1="1440" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="1088" y1="1632" y2="1632" x1="928" />
        </branch>
        <instance x="784" y="1600" name="XLXI_10" orien="R0" />
        <instance x="704" y="1664" name="XLXI_11" orien="R0" />
        <branch name="XLXN_15">
            <wire x2="2496" y1="960" y2="960" x1="2464" />
        </branch>
        <text style="fontsize:48;fontname:Arial" x="1984" y="1304">0</text>
        <instance x="1872" y="1408" name="XLXI_13" orien="R0" />
        <instance x="2208" y="1056" name="XLXI_12" orien="R0" />
        <branch name="XLXN_20">
            <wire x2="2160" y1="1312" y2="1312" x1="2128" />
            <wire x2="2160" y1="992" y2="1312" x1="2160" />
            <wire x2="2208" y1="992" y2="992" x1="2160" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1648" y1="960" y2="960" x1="1616" />
        </branch>
        <instance x="1648" y="1216" name="XLXI_2" orien="R0" />
        <iomarker fontsize="28" x="304" y="1824" name="CLK" orien="R180" />
        <branch name="CLK">
            <wire x2="496" y1="1824" y2="1824" x1="304" />
            <wire x2="1520" y1="1824" y2="1824" x1="496" />
            <wire x2="2320" y1="1824" y2="1824" x1="1520" />
            <wire x2="832" y1="1088" y2="1088" x1="496" />
            <wire x2="496" y1="1088" y2="1824" x1="496" />
            <wire x2="1648" y1="1088" y2="1088" x1="1520" />
            <wire x2="1520" y1="1088" y2="1824" x1="1520" />
            <wire x2="2496" y1="1088" y2="1088" x1="2320" />
            <wire x2="2320" y1="1088" y2="1824" x1="2320" />
        </branch>
        <branch name="CLR">
            <wire x2="560" y1="1920" y2="1920" x1="304" />
            <wire x2="1648" y1="1920" y2="1920" x1="560" />
            <wire x2="2496" y1="1920" y2="1920" x1="1648" />
            <wire x2="560" y1="1184" y2="1920" x1="560" />
            <wire x2="832" y1="1184" y2="1184" x1="560" />
            <wire x2="1648" y1="1184" y2="1920" x1="1648" />
            <wire x2="2496" y1="1184" y2="1920" x1="2496" />
        </branch>
        <iomarker fontsize="28" x="304" y="1920" name="CLR" orien="R180" />
        <branch name="CE">
            <wire x2="656" y1="2016" y2="2016" x1="304" />
            <wire x2="1392" y1="2016" y2="2016" x1="656" />
            <wire x2="2240" y1="2016" y2="2016" x1="1392" />
            <wire x2="832" y1="1024" y2="1024" x1="656" />
            <wire x2="656" y1="1024" y2="2016" x1="656" />
            <wire x2="1392" y1="1056" y2="2016" x1="1392" />
            <wire x2="1648" y1="1056" y2="1056" x1="1392" />
            <wire x2="1648" y1="1024" y2="1056" x1="1648" />
            <wire x2="2240" y1="1056" y2="2016" x1="2240" />
            <wire x2="2496" y1="1056" y2="1056" x1="2240" />
            <wire x2="2496" y1="1024" y2="1056" x1="2496" />
        </branch>
        <iomarker fontsize="28" x="304" y="2016" name="CE" orien="R180" />
        <branch name="XLXN_6">
            <wire x2="1360" y1="1600" y2="1600" x1="1344" />
            <wire x2="1360" y1="992" y2="1600" x1="1360" />
        </branch>
        <instance x="1360" y="1056" name="XLXI_6" orien="R0" />
        <iomarker fontsize="28" x="3200" y="240" name="Q(2:0)" orien="R270" />
        <bustap x2="3104" y1="960" y2="960" x1="3200" />
        <bustap x2="3104" y1="656" y2="656" x1="3200" />
        <bustap x2="3104" y1="432" y2="432" x1="3200" />
        <branch name="Q(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2960" y="656" type="branch" />
            <wire x2="688" y1="1232" y2="1568" x1="688" />
            <wire x2="784" y1="1568" y2="1568" x1="688" />
            <wire x2="960" y1="1232" y2="1232" x1="688" />
            <wire x2="960" y1="1232" y2="1312" x1="960" />
            <wire x2="1024" y1="1312" y2="1312" x1="960" />
            <wire x2="2112" y1="1232" y2="1232" x1="960" />
            <wire x2="2112" y1="960" y2="960" x1="2032" />
            <wire x2="2112" y1="960" y2="1232" x1="2112" />
            <wire x2="2112" y1="656" y2="960" x1="2112" />
            <wire x2="2960" y1="656" y2="656" x1="2112" />
            <wire x2="3104" y1="656" y2="656" x1="2960" />
        </branch>
        <branch name="Q(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2937" y="432" type="branch" />
            <wire x2="432" y1="784" y2="784" x1="384" />
            <wire x2="432" y1="784" y2="928" x1="432" />
            <wire x2="1248" y1="784" y2="784" x1="432" />
            <wire x2="1248" y1="784" y2="960" x1="1248" />
            <wire x2="1248" y1="960" y2="1280" x1="1248" />
            <wire x2="1872" y1="1280" y2="1280" x1="1248" />
            <wire x2="384" y1="784" y2="1632" x1="384" />
            <wire x2="704" y1="1632" y2="1632" x1="384" />
            <wire x2="1248" y1="960" y2="960" x1="1216" />
            <wire x2="1248" y1="432" y2="784" x1="1248" />
            <wire x2="2944" y1="432" y2="432" x1="1248" />
            <wire x2="3104" y1="432" y2="432" x1="2944" />
        </branch>
        <branch name="Q(2:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3200" y="619" type="branch" />
            <wire x2="3200" y1="1728" y2="1728" x1="2656" />
            <wire x2="2656" y1="1728" y2="1920" x1="2656" />
            <wire x2="2720" y1="1920" y2="1920" x1="2656" />
            <wire x2="3200" y1="240" y2="304" x1="3200" />
            <wire x2="3200" y1="304" y2="432" x1="3200" />
            <wire x2="3200" y1="432" y2="624" x1="3200" />
            <wire x2="3200" y1="624" y2="656" x1="3200" />
            <wire x2="3200" y1="656" y2="960" x1="3200" />
            <wire x2="3200" y1="960" y2="976" x1="3200" />
            <wire x2="3200" y1="976" y2="1728" x1="3200" />
        </branch>
    </sheet>
</drawing>