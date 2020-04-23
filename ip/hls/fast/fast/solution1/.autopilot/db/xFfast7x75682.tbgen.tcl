set moduleName xFfast7x75682
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {xFfast7x75682}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_src_mat_data_V int 8 regular {fifo 0 volatile }  }
	{ p_dst_data_V int 8 regular {fifo 1 volatile }  }
	{ p_image_height int 16 regular  }
	{ p_image_width int 16 regular  }
	{ p_threshold int 8 regular  }
	{ p_image_height_c int 12 regular {fifo 1}  }
	{ p_image_width_c int 12 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_src_mat_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_dst_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_image_height", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_image_width", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_threshold", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_image_height_c", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_image_width_c", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ p_src_mat_data_V_dout sc_in sc_lv 8 signal 0 } 
	{ p_src_mat_data_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ p_src_mat_data_V_read sc_out sc_logic 1 signal 0 } 
	{ p_dst_data_V_din sc_out sc_lv 8 signal 1 } 
	{ p_dst_data_V_full_n sc_in sc_logic 1 signal 1 } 
	{ p_dst_data_V_write sc_out sc_logic 1 signal 1 } 
	{ p_image_height sc_in sc_lv 16 signal 2 } 
	{ p_image_width sc_in sc_lv 16 signal 3 } 
	{ p_threshold sc_in sc_lv 8 signal 4 } 
	{ p_image_height_c_din sc_out sc_lv 12 signal 5 } 
	{ p_image_height_c_full_n sc_in sc_logic 1 signal 5 } 
	{ p_image_height_c_write sc_out sc_logic 1 signal 5 } 
	{ p_image_width_c_din sc_out sc_lv 12 signal 6 } 
	{ p_image_width_c_full_n sc_in sc_logic 1 signal 6 } 
	{ p_image_width_c_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "p_src_mat_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_src_mat_data_V", "role": "dout" }} , 
 	{ "name": "p_src_mat_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_data_V", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_data_V", "role": "read" }} , 
 	{ "name": "p_dst_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_dst_data_V", "role": "din" }} , 
 	{ "name": "p_dst_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_data_V", "role": "full_n" }} , 
 	{ "name": "p_dst_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_data_V", "role": "write" }} , 
 	{ "name": "p_image_height", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_image_height", "role": "default" }} , 
 	{ "name": "p_image_width", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_image_width", "role": "default" }} , 
 	{ "name": "p_threshold", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_threshold", "role": "default" }} , 
 	{ "name": "p_image_height_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_image_height_c", "role": "din" }} , 
 	{ "name": "p_image_height_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_image_height_c", "role": "full_n" }} , 
 	{ "name": "p_image_height_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_image_height_c", "role": "write" }} , 
 	{ "name": "p_image_width_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_image_width_c", "role": "din" }} , 
 	{ "name": "p_image_width_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_image_width_c", "role": "full_n" }} , 
 	{ "name": "p_image_width_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_image_width_c", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22"],
		"CDFG" : "xFfast7x75682",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8361896", "EstimateLatencyMax" : "8361896",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_src_mat_data_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_src_mat_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_dst_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_image_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_image_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_image_height_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_image_height_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_image_width_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_image_width_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_0_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_1_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_3_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_4_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_5_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_6_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fast_accel_mux_73ibs_U16", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fast_accel_mux_73jbC_U17", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fast_accel_mux_73jbC_U18", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fast_accel_mux_73jbC_U19", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fast_accel_mux_73jbC_U20", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fast_accel_mux_73jbC_U21", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fast_accel_mux_73jbC_U22", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fast_accel_mux_73jbC_U23", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fast_accel_mux_73jbC_U24", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fast_accel_mux_73jbC_U25", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fast_accel_mux_73jbC_U26", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fast_accel_mux_73jbC_U27", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fast_accel_mux_73jbC_U28", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fast_accel_mux_73jbC_U29", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fast_accel_mux_73jbC_U30", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xFfast7x75682 {
		p_src_mat_data_V {Type I LastRead 6 FirstWrite -1}
		p_dst_data_V {Type O LastRead -1 FirstWrite 17}
		p_image_height {Type I LastRead 0 FirstWrite -1}
		p_image_width {Type I LastRead 0 FirstWrite -1}
		p_threshold {Type I LastRead 0 FirstWrite -1}
		p_image_height_c {Type O LastRead -1 FirstWrite 0}
		p_image_width_c {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8361896", "Max" : "8361896"}
	, {"Name" : "Interval", "Min" : "8361896", "Max" : "8361896"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	p_src_mat_data_V { ap_fifo {  { p_src_mat_data_V_dout fifo_data 0 8 }  { p_src_mat_data_V_empty_n fifo_status 0 1 }  { p_src_mat_data_V_read fifo_update 1 1 } } }
	p_dst_data_V { ap_fifo {  { p_dst_data_V_din fifo_data 1 8 }  { p_dst_data_V_full_n fifo_status 0 1 }  { p_dst_data_V_write fifo_update 1 1 } } }
	p_image_height { ap_none {  { p_image_height in_data 0 16 } } }
	p_image_width { ap_none {  { p_image_width in_data 0 16 } } }
	p_threshold { ap_none {  { p_threshold in_data 0 8 } } }
	p_image_height_c { ap_fifo {  { p_image_height_c_din fifo_data 1 12 }  { p_image_height_c_full_n fifo_status 0 1 }  { p_image_height_c_write fifo_update 1 1 } } }
	p_image_width_c { ap_fifo {  { p_image_width_c_din fifo_data 1 12 }  { p_image_width_c_full_n fifo_status 0 1 }  { p_image_width_c_write fifo_update 1 1 } } }
}
