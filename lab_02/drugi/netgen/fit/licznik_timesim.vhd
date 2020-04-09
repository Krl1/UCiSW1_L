--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: licznik_timesim.vhd
-- /___/   /\     Timestamp: Mon Oct 21 12:21:46 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -ar Structure -tm licznik -w -dir netgen/fit -ofmt vhdl -sim licznik.nga licznik_timesim.vhd 
-- Device	: XC9572XL-10-PC44 (Speed File: Version 3.0)
-- Input file	: licznik.nga
-- Output file	: C:\Users\lab\Desktop\nw\drugi\netgen\fit\licznik_timesim.vhd
-- # of Entities	: 1
-- Design Name	: licznik.nga
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity licznik is
  port (
    CE : in STD_LOGIC := 'X'; 
    CLK : in STD_LOGIC := 'X'; 
    CLR : in STD_LOGIC := 'X'; 
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 ) 
  );
end licznik;

architecture Structure of licznik is
  signal CE_IBUF_1 : STD_LOGIC; 
  signal CLK_IBUF_FCLK_3 : STD_LOGIC; 
  signal CLR_IBUF_5 : STD_LOGIC; 
  signal Q_1_OBUF_Q_7 : STD_LOGIC; 
  signal Q_2_OBUF_Q_9 : STD_LOGIC; 
  signal Q_0_OBUF_Q_11 : STD_LOGIC; 
  signal Q_1_OBUF_Q_12 : STD_LOGIC; 
  signal Q_1_OBUF_13 : STD_LOGIC; 
  signal Q_1_OBUF_RSTF_14 : STD_LOGIC; 
  signal Gnd_15 : STD_LOGIC; 
  signal Q_1_OBUF_tsimcreated_prld_Q_16 : STD_LOGIC; 
  signal Q_1_OBUF_D_17 : STD_LOGIC; 
  signal Q_1_OBUF_CE_18 : STD_LOGIC; 
  signal Q_1_OBUF_D1_19 : STD_LOGIC; 
  signal Q_1_OBUF_D2_20 : STD_LOGIC; 
  signal Q_0_OBUF_21 : STD_LOGIC; 
  signal Q_1_OBUF_D2_PT_0_22 : STD_LOGIC; 
  signal Q_2_OBUF_23 : STD_LOGIC; 
  signal Q_1_OBUF_D2_PT_1_24 : STD_LOGIC; 
  signal Q_2_OBUF_Q_25 : STD_LOGIC; 
  signal Q_2_OBUF_D_26 : STD_LOGIC; 
  signal Q_2_OBUF_tsimcreated_xor_Q_27 : STD_LOGIC; 
  signal Q_2_OBUF_RSTF_28 : STD_LOGIC; 
  signal Q_2_OBUF_tsimcreated_prld_Q_29 : STD_LOGIC; 
  signal Q_2_OBUF_CE_30 : STD_LOGIC; 
  signal Q_2_OBUF_D1_31 : STD_LOGIC; 
  signal Q_2_OBUF_D2_32 : STD_LOGIC; 
  signal Q_0_OBUF_Q_33 : STD_LOGIC; 
  signal Q_0_OBUF_RSTF_34 : STD_LOGIC; 
  signal Q_0_OBUF_tsimcreated_prld_Q_35 : STD_LOGIC; 
  signal Q_0_OBUF_D_36 : STD_LOGIC; 
  signal Q_0_OBUF_CE_37 : STD_LOGIC; 
  signal Q_0_OBUF_D1_38 : STD_LOGIC; 
  signal Q_0_OBUF_D2_39 : STD_LOGIC; 
  signal Q_0_OBUF_D2_PT_0_40 : STD_LOGIC; 
  signal Q_0_OBUF_D2_PT_1_41 : STD_LOGIC; 
  signal NlwBufferSignal_Q_1_OBUF_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_Q_1_OBUF_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_Q_1_OBUF_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_Q_1_OBUF_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Q_1_OBUF_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_Q_1_OBUF_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_Q_1_OBUF_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_Q_1_OBUF_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_Q_1_OBUF_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_Q_1_OBUF_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_Q_1_OBUF_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_Q_1_OBUF_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_Q_1_OBUF_RSTF_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_Q_1_OBUF_RSTF_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_Q_1_OBUF_CE_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_Q_1_OBUF_CE_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_Q_2_OBUF_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_Q_2_OBUF_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_Q_2_OBUF_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_Q_2_OBUF_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_Q_2_OBUF_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_Q_2_OBUF_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Q_2_OBUF_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_Q_2_OBUF_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_Q_2_OBUF_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_Q_2_OBUF_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_Q_2_OBUF_RSTF_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_Q_2_OBUF_RSTF_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_Q_2_OBUF_CE_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_Q_2_OBUF_CE_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_Q_0_OBUF_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_Q_0_OBUF_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_Q_0_OBUF_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_Q_0_OBUF_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Q_0_OBUF_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_Q_0_OBUF_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_Q_0_OBUF_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_Q_0_OBUF_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_Q_0_OBUF_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_Q_0_OBUF_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_Q_0_OBUF_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_Q_0_OBUF_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_Q_0_OBUF_RSTF_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_Q_0_OBUF_RSTF_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_Q_0_OBUF_CE_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_Q_0_OBUF_CE_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_Q_1_OBUF_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_Q_1_OBUF_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_Q_1_OBUF_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_Q_0_OBUF_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_Q_0_OBUF_D2_PT_1_IN0 : STD_LOGIC; 
begin
  CE_IBUF : X_BUF
    port map (
      I => CE,
      O => CE_IBUF_1
    );
  CLK_IBUF_FCLK : X_BUF
    port map (
      I => CLK,
      O => CLK_IBUF_FCLK_3
    );
  CLR_IBUF : X_BUF
    port map (
      I => CLR,
      O => CLR_IBUF_5
    );
  Q_1_Q : X_BUF
    port map (
      I => Q_1_OBUF_Q_7,
      O => Q(1)
    );
  Q_2_Q : X_BUF
    port map (
      I => Q_2_OBUF_Q_9,
      O => Q(2)
    );
  Q_0_Q : X_BUF
    port map (
      I => Q_0_OBUF_Q_11,
      O => Q(0)
    );
  Q_1_OBUF_Q : X_BUF
    port map (
      I => Q_1_OBUF_Q_12,
      O => Q_1_OBUF_Q_7
    );
  Q_1_OBUF : X_BUF
    port map (
      I => Q_1_OBUF_Q_12,
      O => Q_1_OBUF_13
    );
  Q_1_OBUF_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_Q_1_OBUF_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_Q_1_OBUF_tsimcreated_prld_IN1,
      O => Q_1_OBUF_tsimcreated_prld_Q_16
    );
  Gnd : X_ZERO
    port map (
      O => Gnd_15
    );
  Q_1_OBUF_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_Q_1_OBUF_REG_IN,
      CE => Q_1_OBUF_CE_18,
      CLK => NlwBufferSignal_Q_1_OBUF_REG_CLK,
      SET => Gnd_15,
      RST => Q_1_OBUF_tsimcreated_prld_Q_16,
      O => Q_1_OBUF_Q_12
    );
  Q_1_OBUF_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_Q_1_OBUF_D_IN0,
      I1 => NlwBufferSignal_Q_1_OBUF_D_IN1,
      O => Q_1_OBUF_D_17
    );
  Q_1_OBUF_D1 : X_ZERO
    port map (
      O => Q_1_OBUF_D1_19
    );
  Q_1_OBUF_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_Q_1_OBUF_D2_PT_0_IN0,
      I1 => NlwInverterSignal_Q_1_OBUF_D2_PT_0_IN1,
      O => Q_1_OBUF_D2_PT_0_22
    );
  Q_1_OBUF_D2_PT_1 : X_AND2
    port map (
      I0 => NlwInverterSignal_Q_1_OBUF_D2_PT_1_IN0,
      I1 => NlwInverterSignal_Q_1_OBUF_D2_PT_1_IN1,
      O => Q_1_OBUF_D2_PT_1_24
    );
  Q_1_OBUF_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_Q_1_OBUF_D2_IN0,
      I1 => NlwBufferSignal_Q_1_OBUF_D2_IN1,
      O => Q_1_OBUF_D2_20
    );
  Q_1_OBUF_RSTF : X_AND2
    port map (
      I0 => NlwBufferSignal_Q_1_OBUF_RSTF_IN0,
      I1 => NlwBufferSignal_Q_1_OBUF_RSTF_IN1,
      O => Q_1_OBUF_RSTF_14
    );
  Q_1_OBUF_CE : X_AND2
    port map (
      I0 => NlwBufferSignal_Q_1_OBUF_CE_IN0,
      I1 => NlwBufferSignal_Q_1_OBUF_CE_IN1,
      O => Q_1_OBUF_CE_18
    );
  Q_2_OBUF_Q : X_BUF
    port map (
      I => Q_2_OBUF_Q_25,
      O => Q_2_OBUF_Q_9
    );
  Q_2_OBUF : X_BUF
    port map (
      I => Q_2_OBUF_Q_25,
      O => Q_2_OBUF_23
    );
  Q_2_OBUF_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_Q_2_OBUF_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_Q_2_OBUF_tsimcreated_xor_IN1,
      O => Q_2_OBUF_tsimcreated_xor_Q_27
    );
  Q_2_OBUF_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_Q_2_OBUF_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_Q_2_OBUF_tsimcreated_prld_IN1,
      O => Q_2_OBUF_tsimcreated_prld_Q_29
    );
  Q_2_OBUF_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_Q_2_OBUF_REG_IN,
      CE => Q_2_OBUF_CE_30,
      CLK => NlwBufferSignal_Q_2_OBUF_REG_CLK,
      SET => Gnd_15,
      RST => Q_2_OBUF_tsimcreated_prld_Q_29,
      O => Q_2_OBUF_Q_25
    );
  Q_2_OBUF_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_Q_2_OBUF_D_IN0,
      I1 => NlwBufferSignal_Q_2_OBUF_D_IN1,
      O => Q_2_OBUF_D_26
    );
  Q_2_OBUF_D1 : X_ZERO
    port map (
      O => Q_2_OBUF_D1_31
    );
  Q_2_OBUF_D2 : X_AND2
    port map (
      I0 => NlwBufferSignal_Q_2_OBUF_D2_IN0,
      I1 => NlwBufferSignal_Q_2_OBUF_D2_IN1,
      O => Q_2_OBUF_D2_32
    );
  Q_2_OBUF_RSTF : X_AND2
    port map (
      I0 => NlwBufferSignal_Q_2_OBUF_RSTF_IN0,
      I1 => NlwBufferSignal_Q_2_OBUF_RSTF_IN1,
      O => Q_2_OBUF_RSTF_28
    );
  Q_2_OBUF_CE : X_AND2
    port map (
      I0 => NlwBufferSignal_Q_2_OBUF_CE_IN0,
      I1 => NlwBufferSignal_Q_2_OBUF_CE_IN1,
      O => Q_2_OBUF_CE_30
    );
  Q_0_OBUF_Q : X_BUF
    port map (
      I => Q_0_OBUF_Q_33,
      O => Q_0_OBUF_Q_11
    );
  Q_0_OBUF : X_BUF
    port map (
      I => Q_0_OBUF_Q_33,
      O => Q_0_OBUF_21
    );
  Q_0_OBUF_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_Q_0_OBUF_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_Q_0_OBUF_tsimcreated_prld_IN1,
      O => Q_0_OBUF_tsimcreated_prld_Q_35
    );
  Q_0_OBUF_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_Q_0_OBUF_REG_IN,
      CE => Q_0_OBUF_CE_37,
      CLK => NlwBufferSignal_Q_0_OBUF_REG_CLK,
      SET => Gnd_15,
      RST => Q_0_OBUF_tsimcreated_prld_Q_35,
      O => Q_0_OBUF_Q_33
    );
  Q_0_OBUF_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_Q_0_OBUF_D_IN0,
      I1 => NlwBufferSignal_Q_0_OBUF_D_IN1,
      O => Q_0_OBUF_D_36
    );
  Q_0_OBUF_D1 : X_ZERO
    port map (
      O => Q_0_OBUF_D1_38
    );
  Q_0_OBUF_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_Q_0_OBUF_D2_PT_0_IN0,
      I1 => NlwInverterSignal_Q_0_OBUF_D2_PT_0_IN1,
      O => Q_0_OBUF_D2_PT_0_40
    );
  Q_0_OBUF_D2_PT_1 : X_AND2
    port map (
      I0 => NlwInverterSignal_Q_0_OBUF_D2_PT_1_IN0,
      I1 => NlwBufferSignal_Q_0_OBUF_D2_PT_1_IN1,
      O => Q_0_OBUF_D2_PT_1_41
    );
  Q_0_OBUF_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_Q_0_OBUF_D2_IN0,
      I1 => NlwBufferSignal_Q_0_OBUF_D2_IN1,
      O => Q_0_OBUF_D2_39
    );
  Q_0_OBUF_RSTF : X_AND2
    port map (
      I0 => NlwBufferSignal_Q_0_OBUF_RSTF_IN0,
      I1 => NlwBufferSignal_Q_0_OBUF_RSTF_IN1,
      O => Q_0_OBUF_RSTF_34
    );
  Q_0_OBUF_CE : X_AND2
    port map (
      I0 => NlwBufferSignal_Q_0_OBUF_CE_IN0,
      I1 => NlwBufferSignal_Q_0_OBUF_CE_IN1,
      O => Q_0_OBUF_CE_37
    );
  NlwBufferBlock_Q_1_OBUF_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => Q_1_OBUF_RSTF_14,
      O => NlwBufferSignal_Q_1_OBUF_tsimcreated_prld_IN0
    );
  NlwBufferBlock_Q_1_OBUF_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_15,
      O => NlwBufferSignal_Q_1_OBUF_tsimcreated_prld_IN1
    );
  NlwBufferBlock_Q_1_OBUF_REG_IN : X_BUF
    port map (
      I => Q_1_OBUF_D_17,
      O => NlwBufferSignal_Q_1_OBUF_REG_IN
    );
  NlwBufferBlock_Q_1_OBUF_REG_CLK : X_BUF
    port map (
      I => CLK_IBUF_FCLK_3,
      O => NlwBufferSignal_Q_1_OBUF_REG_CLK
    );
  NlwBufferBlock_Q_1_OBUF_D_IN0 : X_BUF
    port map (
      I => Q_1_OBUF_D1_19,
      O => NlwBufferSignal_Q_1_OBUF_D_IN0
    );
  NlwBufferBlock_Q_1_OBUF_D_IN1 : X_BUF
    port map (
      I => Q_1_OBUF_D2_20,
      O => NlwBufferSignal_Q_1_OBUF_D_IN1
    );
  NlwBufferBlock_Q_1_OBUF_D2_PT_0_IN0 : X_BUF
    port map (
      I => Q_1_OBUF_13,
      O => NlwBufferSignal_Q_1_OBUF_D2_PT_0_IN0
    );
  NlwBufferBlock_Q_1_OBUF_D2_PT_0_IN1 : X_BUF
    port map (
      I => Q_0_OBUF_21,
      O => NlwBufferSignal_Q_1_OBUF_D2_PT_0_IN1
    );
  NlwBufferBlock_Q_1_OBUF_D2_PT_1_IN0 : X_BUF
    port map (
      I => Q_1_OBUF_13,
      O => NlwBufferSignal_Q_1_OBUF_D2_PT_1_IN0
    );
  NlwBufferBlock_Q_1_OBUF_D2_PT_1_IN1 : X_BUF
    port map (
      I => Q_2_OBUF_23,
      O => NlwBufferSignal_Q_1_OBUF_D2_PT_1_IN1
    );
  NlwBufferBlock_Q_1_OBUF_D2_IN0 : X_BUF
    port map (
      I => Q_1_OBUF_D2_PT_0_22,
      O => NlwBufferSignal_Q_1_OBUF_D2_IN0
    );
  NlwBufferBlock_Q_1_OBUF_D2_IN1 : X_BUF
    port map (
      I => Q_1_OBUF_D2_PT_1_24,
      O => NlwBufferSignal_Q_1_OBUF_D2_IN1
    );
  NlwBufferBlock_Q_1_OBUF_RSTF_IN0 : X_BUF
    port map (
      I => CLR_IBUF_5,
      O => NlwBufferSignal_Q_1_OBUF_RSTF_IN0
    );
  NlwBufferBlock_Q_1_OBUF_RSTF_IN1 : X_BUF
    port map (
      I => CLR_IBUF_5,
      O => NlwBufferSignal_Q_1_OBUF_RSTF_IN1
    );
  NlwBufferBlock_Q_1_OBUF_CE_IN0 : X_BUF
    port map (
      I => CE_IBUF_1,
      O => NlwBufferSignal_Q_1_OBUF_CE_IN0
    );
  NlwBufferBlock_Q_1_OBUF_CE_IN1 : X_BUF
    port map (
      I => CE_IBUF_1,
      O => NlwBufferSignal_Q_1_OBUF_CE_IN1
    );
  NlwBufferBlock_Q_2_OBUF_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => Q_2_OBUF_D_26,
      O => NlwBufferSignal_Q_2_OBUF_tsimcreated_xor_IN0
    );
  NlwBufferBlock_Q_2_OBUF_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => Q_2_OBUF_Q_25,
      O => NlwBufferSignal_Q_2_OBUF_tsimcreated_xor_IN1
    );
  NlwBufferBlock_Q_2_OBUF_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => Q_2_OBUF_RSTF_28,
      O => NlwBufferSignal_Q_2_OBUF_tsimcreated_prld_IN0
    );
  NlwBufferBlock_Q_2_OBUF_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_15,
      O => NlwBufferSignal_Q_2_OBUF_tsimcreated_prld_IN1
    );
  NlwBufferBlock_Q_2_OBUF_REG_IN : X_BUF
    port map (
      I => Q_2_OBUF_tsimcreated_xor_Q_27,
      O => NlwBufferSignal_Q_2_OBUF_REG_IN
    );
  NlwBufferBlock_Q_2_OBUF_REG_CLK : X_BUF
    port map (
      I => CLK_IBUF_FCLK_3,
      O => NlwBufferSignal_Q_2_OBUF_REG_CLK
    );
  NlwBufferBlock_Q_2_OBUF_D_IN0 : X_BUF
    port map (
      I => Q_2_OBUF_D1_31,
      O => NlwBufferSignal_Q_2_OBUF_D_IN0
    );
  NlwBufferBlock_Q_2_OBUF_D_IN1 : X_BUF
    port map (
      I => Q_2_OBUF_D2_32,
      O => NlwBufferSignal_Q_2_OBUF_D_IN1
    );
  NlwBufferBlock_Q_2_OBUF_D2_IN0 : X_BUF
    port map (
      I => Q_0_OBUF_21,
      O => NlwBufferSignal_Q_2_OBUF_D2_IN0
    );
  NlwBufferBlock_Q_2_OBUF_D2_IN1 : X_BUF
    port map (
      I => Q_0_OBUF_21,
      O => NlwBufferSignal_Q_2_OBUF_D2_IN1
    );
  NlwBufferBlock_Q_2_OBUF_RSTF_IN0 : X_BUF
    port map (
      I => CLR_IBUF_5,
      O => NlwBufferSignal_Q_2_OBUF_RSTF_IN0
    );
  NlwBufferBlock_Q_2_OBUF_RSTF_IN1 : X_BUF
    port map (
      I => CLR_IBUF_5,
      O => NlwBufferSignal_Q_2_OBUF_RSTF_IN1
    );
  NlwBufferBlock_Q_2_OBUF_CE_IN0 : X_BUF
    port map (
      I => CE_IBUF_1,
      O => NlwBufferSignal_Q_2_OBUF_CE_IN0
    );
  NlwBufferBlock_Q_2_OBUF_CE_IN1 : X_BUF
    port map (
      I => CE_IBUF_1,
      O => NlwBufferSignal_Q_2_OBUF_CE_IN1
    );
  NlwBufferBlock_Q_0_OBUF_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => Q_0_OBUF_RSTF_34,
      O => NlwBufferSignal_Q_0_OBUF_tsimcreated_prld_IN0
    );
  NlwBufferBlock_Q_0_OBUF_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_15,
      O => NlwBufferSignal_Q_0_OBUF_tsimcreated_prld_IN1
    );
  NlwBufferBlock_Q_0_OBUF_REG_IN : X_BUF
    port map (
      I => Q_0_OBUF_D_36,
      O => NlwBufferSignal_Q_0_OBUF_REG_IN
    );
  NlwBufferBlock_Q_0_OBUF_REG_CLK : X_BUF
    port map (
      I => CLK_IBUF_FCLK_3,
      O => NlwBufferSignal_Q_0_OBUF_REG_CLK
    );
  NlwBufferBlock_Q_0_OBUF_D_IN0 : X_BUF
    port map (
      I => Q_0_OBUF_D1_38,
      O => NlwBufferSignal_Q_0_OBUF_D_IN0
    );
  NlwBufferBlock_Q_0_OBUF_D_IN1 : X_BUF
    port map (
      I => Q_0_OBUF_D2_39,
      O => NlwBufferSignal_Q_0_OBUF_D_IN1
    );
  NlwBufferBlock_Q_0_OBUF_D2_PT_0_IN0 : X_BUF
    port map (
      I => Q_1_OBUF_13,
      O => NlwBufferSignal_Q_0_OBUF_D2_PT_0_IN0
    );
  NlwBufferBlock_Q_0_OBUF_D2_PT_0_IN1 : X_BUF
    port map (
      I => Q_0_OBUF_21,
      O => NlwBufferSignal_Q_0_OBUF_D2_PT_0_IN1
    );
  NlwBufferBlock_Q_0_OBUF_D2_PT_1_IN0 : X_BUF
    port map (
      I => Q_1_OBUF_13,
      O => NlwBufferSignal_Q_0_OBUF_D2_PT_1_IN0
    );
  NlwBufferBlock_Q_0_OBUF_D2_PT_1_IN1 : X_BUF
    port map (
      I => Q_2_OBUF_23,
      O => NlwBufferSignal_Q_0_OBUF_D2_PT_1_IN1
    );
  NlwBufferBlock_Q_0_OBUF_D2_IN0 : X_BUF
    port map (
      I => Q_0_OBUF_D2_PT_0_40,
      O => NlwBufferSignal_Q_0_OBUF_D2_IN0
    );
  NlwBufferBlock_Q_0_OBUF_D2_IN1 : X_BUF
    port map (
      I => Q_0_OBUF_D2_PT_1_41,
      O => NlwBufferSignal_Q_0_OBUF_D2_IN1
    );
  NlwBufferBlock_Q_0_OBUF_RSTF_IN0 : X_BUF
    port map (
      I => CLR_IBUF_5,
      O => NlwBufferSignal_Q_0_OBUF_RSTF_IN0
    );
  NlwBufferBlock_Q_0_OBUF_RSTF_IN1 : X_BUF
    port map (
      I => CLR_IBUF_5,
      O => NlwBufferSignal_Q_0_OBUF_RSTF_IN1
    );
  NlwBufferBlock_Q_0_OBUF_CE_IN0 : X_BUF
    port map (
      I => CE_IBUF_1,
      O => NlwBufferSignal_Q_0_OBUF_CE_IN0
    );
  NlwBufferBlock_Q_0_OBUF_CE_IN1 : X_BUF
    port map (
      I => CE_IBUF_1,
      O => NlwBufferSignal_Q_0_OBUF_CE_IN1
    );
  NlwInverterBlock_Q_1_OBUF_D2_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_Q_1_OBUF_D2_PT_0_IN1,
      O => NlwInverterSignal_Q_1_OBUF_D2_PT_0_IN1
    );
  NlwInverterBlock_Q_1_OBUF_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_Q_1_OBUF_D2_PT_1_IN0,
      O => NlwInverterSignal_Q_1_OBUF_D2_PT_1_IN0
    );
  NlwInverterBlock_Q_1_OBUF_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_Q_1_OBUF_D2_PT_1_IN1,
      O => NlwInverterSignal_Q_1_OBUF_D2_PT_1_IN1
    );
  NlwInverterBlock_Q_0_OBUF_D2_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_Q_0_OBUF_D2_PT_0_IN1,
      O => NlwInverterSignal_Q_0_OBUF_D2_PT_0_IN1
    );
  NlwInverterBlock_Q_0_OBUF_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_Q_0_OBUF_D2_PT_1_IN0,
      O => NlwInverterSignal_Q_0_OBUF_D2_PT_1_IN0
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => PRLD);

end Structure;

