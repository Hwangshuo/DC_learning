read_verilog ../rtl/clock.v  
read_verilog ../rtl/register.v
read_verilog ../rtl/cells-lib/dffr.v
read_verilog ../rtl/cells-lib/mux.v


current_design register

write -hierarchy -f ddc -out ../unmapped/register.ddc 
list_designs 
list_libs 


# Create clock object and set uncertainty 
set period 10 
#可以理解为define 我们定义一个变量period
create_clock -period $period [get_port clk]  
#设置register模块的时钟为变量period，即10ns
set_clock_uncertainty 0.2 [get_clocks clk] 
#clk端口上升沿下降沿误差范围0.2ns
set_dont_touch_network [get_clocks clk]
#保证综合时不对clk信号优化

# Set constraints on input ports 
set_input_delay -max 1.2 -clock clk [get_port data] 
set_input_delay -max 1 -clock clk [get_port load]
set_input_delay -max 2 -clock clk [get_port rst_]	
#复位端口同样需要设置 


# Set constraints on output ports 
set_output_delay -max 1  -clock clk [all_outputs]
#此处我们直接使用all_outputs指所有输出端口

compile_ultra 
report_constraint -all > ../rpt/rpt_consitraints 
report_timing   >  ../rpt/rpt_timing 
report_area     >  ../rpt/rpt_area 
report_power    >  ../rpt/rpt_power 
　　 
write -hierarchy -format ddc -output ../mapped/register.ddc 
write -hierarchy -format verilog -output ../mapped/register.v 
write_sdc ../mapped/register.sdc 
write_sdf ../mapped/register.sdf 
　　 
list_designs 
list_libs
