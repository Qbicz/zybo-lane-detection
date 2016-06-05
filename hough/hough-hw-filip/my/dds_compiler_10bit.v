dds_compiler_10bit dds_compiler_10bit_inst (
   // Input Ports - Single Bit
   .aclk                     (aclk),                  
   .s_axis_phase_tvalid      (s_axis_phase_tvalid),   
   // Input Ports - Busses
   .s_axis_phase_tdata[15:0] (s_axis_phase_tdata[15:0]),
   // Output Ports - Single Bit
   .m_axis_data_tvalid       (m_axis_data_tvalid),    
   // Output Ports - Busses
   .m_axis_data_tdata[31:0]  (m_axis_data_tdata[31:0])
   // InOut Ports - Single Bit
   // InOut Ports - Busses
);
