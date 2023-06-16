## on-chip debugging

### clocks in the debug core: 
If the clocks are driven from MMCM/PLL, ensure that the MMCM/PLL LOCKED signal is high prior to any debug core measurements. If the clock is connected to the Debug Hub or any of the debug cores and the MMCM/PLL LOCKED signal transitions to a 0 in the middle of debug operations, the clock can have significant jitter that might result in unpredictable behavior of the debug logic.

- When using clock synthesis directly instantiating MMCM modules have a peculiar frequence setting. VFCO must between 600MHz to 1200MHz. To achive this CLKFBOUT_MULT_F and DIVCLK_DIVIDE must follow CLKFBOUT_MULT_F*1000/(DIVCLK_DIVIDE*CLKIN1_PERIOD) and the output must be within this range. With 10ns period and divclk_divide =1, Mult cannot be outside of 6 to 12. Use CLKOUT0_DIVIDE_F to further tune the clock.[https://docs.xilinx.com/v/u/en-US/ug472_7Series_Clocking] page-72