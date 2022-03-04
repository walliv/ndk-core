-- mi_addr_space_pkg.vhd: Package with MI address space definition
-- Copyright (C) 2021 CESNET z. s. p. o.
-- Author(s): Jakub Cabal <cabal@cesnet.cz>
--
-- SPDX-License-Identifier: BSD-3-Clause

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.math_pack.all;
use work.type_pack.all;

package mi_addr_space_pack is

    -- Number of output MI ports
    constant MI_ADC_PORTS : natural := 11;

    -- Address Space definition
    constant MI_ADC_ADDR_BASE : slv_array_t(MI_ADC_PORTS-1 downto 0)(32-1 downto 0)
        := ( 0 => X"0000_0000", -- Test space component
             1 => X"0000_1000", -- Temp Sensor component
             2 => X"0000_2000", -- BootFPGA component/SDM ctrl
             3 => X"0000_4000", -- Timestamp unit
             4 => X"0000_5000", -- Test DMA Gen loop
             5 => X"0000_8000", -- Network module (MACs)
             6 => X"0001_0000", -- DDR controller
             7 => X"0080_0000", -- Ethernet physical layer
             8 => X"0100_0000", -- DMA
             9 => X"0140_0000", -- MSIX
            10 => X"0200_0000");-- User application

    constant MI_ADC_PORT_TEST    : natural := 0;
    constant MI_ADC_PORT_SENSOR  : natural := 1;
    constant MI_ADC_PORT_BOOT    : natural := 2;
    constant MI_ADC_PORT_TSU     : natural := 3;
    constant MI_ADC_PORT_GENLOOP : natural := 4;
    constant MI_ADC_PORT_NETMOD  : natural := 5;
    constant MI_ADC_PORT_DDRMOD  : natural := 6;
    constant MI_ADC_PORT_ETHMOD  : natural := 7;
    constant MI_ADC_PORT_DMA     : natural := 8;
    constant MI_ADC_PORT_MSIX    : natural := 9;
    constant MI_ADC_PORT_USERAPP : natural := 10;

end package;

package body mi_addr_space_pack is

end;
