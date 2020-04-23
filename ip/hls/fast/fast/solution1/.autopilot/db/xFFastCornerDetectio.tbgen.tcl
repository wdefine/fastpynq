set moduleName xFFastCornerDetectio
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {xFFastCornerDetectio}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_src_mat_data_V int 8 regular {fifo 0 volatile }  }
	{ p_dst_mat_data_V int 1 regular {fifo 1 volatile }  }
	{ p_image_height int 16 regular  }
	{ p_image_width int 16 regular  }
	{ p_threshold int 8 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_src_mat_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_dst_mat_data_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_image_height", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_image_width", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_threshold", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ p_src_mat_data_V_dout sc_in sc_lv 8 signal 0 } 
	{ p_src_mat_data_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ p_src_mat_data_V_read sc_out sc_logic 1 signal 0 } 
	{ p_dst_mat_data_V_din sc_out sc_lv 1 signal 1 } 
	{ p_dst_mat_data_V_full_n sc_in sc_logic 1 signal 1 } 
	{ p_dst_mat_data_V_write sc_out sc_logic 1 signal 1 } 
	{ p_image_height sc_in sc_lv 16 signal 2 } 
	{ p_image_width sc_in sc_lv 16 signal 3 } 
	{ p_threshold sc_in sc_lv 8 signal 4 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ p_image_height_ap_vld sc_in sc_logic 1 invld 2 } 
	{ p_image_width_ap_vld sc_in sc_logic 1 invld 3 } 
	{ p_threshold_ap_vld sc_in sc_logic 1 invld 4 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "p_src_mat_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_src_mat_data_V", "role": "dout" }} , 
 	{ "name": "p_src_mat_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_data_V", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_data_V", "role": "read" }} , 
 	{ "name": "p_dst_mat_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_mat_data_V", "role": "din" }} , 
 	{ "name": "p_dst_mat_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_mat_data_V", "role": "full_n" }} , 
 	{ "name": "p_dst_mat_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_mat_data_V", "role": "write" }} , 
 	{ "name": "p_image_height", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_image_height", "role": "default" }} , 
 	{ "name": "p_image_width", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_image_width", "role": "default" }} , 
 	{ "name": "p_threshold", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_threshold", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "p_image_height_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_image_height", "role": "ap_vld" }} , 
 	{ "name": "p_image_width_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_image_width", "role": "ap_vld" }} , 
 	{ "name": "p_threshold_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_threshold", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "24", "36", "37", "38", "39"],
		"CDFG" : "xFFastCornerDetectio",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8361896", "EstimateLatencyMax" : "8361896",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "xFfast7x75682_U0"}],
		"OutputProcess" : [
			{"ID" : "24", "Name" : "xFfastnms5781_U0"}],
		"Port" : [
			{"Name" : "p_src_mat_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "xFfast7x75682_U0", "Port" : "p_src_mat_data_V"}]},
			{"Name" : "p_dst_mat_data_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "xFfastnms5781_U0", "Port" : "p_dst_mat_data_V"}]},
			{"Name" : "p_image_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_image_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_threshold", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xFfast7x75682_U0", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23"],
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
			{"Name" : "p_dst_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "36",
				"BlockSignal" : [
					{"Name" : "p_dst_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_image_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_image_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_image_height_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "37",
				"BlockSignal" : [
					{"Name" : "p_image_height_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_image_width_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "38",
				"BlockSignal" : [
					{"Name" : "p_image_width_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfast7x75682_U0.buf_0_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfast7x75682_U0.buf_1_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfast7x75682_U0.buf_2_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfast7x75682_U0.buf_3_V_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfast7x75682_U0.buf_4_V_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfast7x75682_U0.buf_5_V_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfast7x75682_U0.buf_6_V_U", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfast7x75682_U0.fast_accel_mux_73ibs_U16", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfast7x75682_U0.fast_accel_mux_73jbC_U17", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfast7x75682_U0.fast_accel_mux_73jbC_U18", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfast7x75682_U0.fast_accel_mux_73jbC_U19", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfast7x75682_U0.fast_accel_mux_73jbC_U20", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfast7x75682_U0.fast_accel_mux_73jbC_U21", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfast7x75682_U0.fast_accel_mux_73jbC_U22", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfast7x75682_U0.fast_accel_mux_73jbC_U23", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfast7x75682_U0.fast_accel_mux_73jbC_U24", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfast7x75682_U0.fast_accel_mux_73jbC_U25", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfast7x75682_U0.fast_accel_mux_73jbC_U26", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfast7x75682_U0.fast_accel_mux_73jbC_U27", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfast7x75682_U0.fast_accel_mux_73jbC_U28", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfast7x75682_U0.fast_accel_mux_73jbC_U29", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfast7x75682_U0.fast_accel_mux_73jbC_U30", "Parent" : "1"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xFfastnms5781_U0", "Parent" : "0", "Child" : ["25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35"],
		"CDFG" : "xFfastnms5781",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8328741", "EstimateLatencyMax" : "8328741",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_xFfastnpcA_U",
		"Port" : [
			{"Name" : "p_dst_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "36",
				"BlockSignal" : [
					{"Name" : "p_dst_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_mat_data_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_dst_mat_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_image_height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "37",
				"BlockSignal" : [
					{"Name" : "p_image_height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_image_width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "38",
				"BlockSignal" : [
					{"Name" : "p_image_width_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfastnms5781_U0.buf_0_V_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfastnms5781_U0.buf_1_V_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfastnms5781_U0.buf_2_V_U", "Parent" : "24"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfastnms5781_U0.fast_accel_mux_32ncg_U41", "Parent" : "24"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfastnms5781_U0.fast_accel_mux_32ocq_U42", "Parent" : "24"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfastnms5781_U0.fast_accel_mux_32ncg_U43", "Parent" : "24"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfastnms5781_U0.fast_accel_mux_32ncg_U44", "Parent" : "24"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfastnms5781_U0.fast_accel_mux_32ncg_U45", "Parent" : "24"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfastnms5781_U0.fast_accel_mux_32ncg_U46", "Parent" : "24"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfastnms5781_U0.fast_accel_mux_32ncg_U47", "Parent" : "24"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfastnms5781_U0.fast_accel_mux_32ncg_U48", "Parent" : "24"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_dst_data_V_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_image_height_c_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_image_width_c_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_xFfastnpcA_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xFFastCornerDetectio {
		p_src_mat_data_V {Type I LastRead 6 FirstWrite -1}
		p_dst_mat_data_V {Type O LastRead -1 FirstWrite 9}
		p_image_height {Type I LastRead 0 FirstWrite -1}
		p_image_width {Type I LastRead 0 FirstWrite -1}
		p_threshold {Type I LastRead 0 FirstWrite -1}}
	xFfast7x75682 {
		p_src_mat_data_V {Type I LastRead 6 FirstWrite -1}
		p_dst_data_V {Type O LastRead -1 FirstWrite 17}
		p_image_height {Type I LastRead 0 FirstWrite -1}
		p_image_width {Type I LastRead 0 FirstWrite -1}
		p_threshold {Type I LastRead 0 FirstWrite -1}
		p_image_height_c {Type O LastRead -1 FirstWrite 0}
		p_image_width_c {Type O LastRead -1 FirstWrite 0}}
	xFfastnms5781 {
		p_dst_data_V {Type I LastRead 6 FirstWrite -1}
		p_dst_mat_data_V {Type O LastRead -1 FirstWrite 9}
		p_image_height {Type I LastRead 0 FirstWrite -1}
		p_image_width {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8361896", "Max" : "8361896"}
	, {"Name" : "Interval", "Min" : "8361897", "Max" : "8361897"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_src_mat_data_V { ap_fifo {  { p_src_mat_data_V_dout fifo_data 0 8 }  { p_src_mat_data_V_empty_n fifo_status 0 1 }  { p_src_mat_data_V_read fifo_update 1 1 } } }
	p_dst_mat_data_V { ap_fifo {  { p_dst_mat_data_V_din fifo_data 1 1 }  { p_dst_mat_data_V_full_n fifo_status 0 1 }  { p_dst_mat_data_V_write fifo_update 1 1 } } }
	p_image_height { ap_none {  { p_image_height in_data 0 16 }  { p_image_height_ap_vld in_vld 0 1 } } }
	p_image_width { ap_none {  { p_image_width in_data 0 16 }  { p_image_width_ap_vld in_vld 0 1 } } }
	p_threshold { ap_none {  { p_threshold in_data 0 8 }  { p_threshold_ap_vld in_vld 0 1 } } }
}
