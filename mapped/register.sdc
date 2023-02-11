###################################################################

# Created by write_sdc on Sat Feb 11 22:05:23 2023

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
create_clock [get_ports clk]  -period 10  -waveform {0 5}
set_clock_uncertainty 0.2  [get_clocks clk]
set_input_delay -clock clk  -max 1.2  [get_ports {data[7]}]
set_input_delay -clock clk  -max 1.2  [get_ports {data[6]}]
set_input_delay -clock clk  -max 1.2  [get_ports {data[5]}]
set_input_delay -clock clk  -max 1.2  [get_ports {data[4]}]
set_input_delay -clock clk  -max 1.2  [get_ports {data[3]}]
set_input_delay -clock clk  -max 1.2  [get_ports {data[2]}]
set_input_delay -clock clk  -max 1.2  [get_ports {data[1]}]
set_input_delay -clock clk  -max 1.2  [get_ports {data[0]}]
set_input_delay -clock clk  -max 1  [get_ports load]
set_input_delay -clock clk  -max 2  [get_ports rst_]
set_output_delay -clock clk  -max 1  [get_ports {out[7]}]
set_output_delay -clock clk  -max 1  [get_ports {out[6]}]
set_output_delay -clock clk  -max 1  [get_ports {out[5]}]
set_output_delay -clock clk  -max 1  [get_ports {out[4]}]
set_output_delay -clock clk  -max 1  [get_ports {out[3]}]
set_output_delay -clock clk  -max 1  [get_ports {out[2]}]
set_output_delay -clock clk  -max 1  [get_ports {out[1]}]
set_output_delay -clock clk  -max 1  [get_ports {out[0]}]
