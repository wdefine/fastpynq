set moduleName fast
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
set C_modelName {fast}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_src_mat_rows int 32 regular {fifo 0}  }
	{ p_src_mat_cols int 32 regular {fifo 0}  }
	{ p_src_mat_data_V int 8 regular {fifo 0 volatile }  }
	{ p_dst_mat_data_V int 1 regular {fifo 1 volatile }  }
	{ threshold int 32 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_src_mat_rows", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_mat_cols", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_mat_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_dst_mat_data_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "threshold", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_src_mat_rows_dout sc_in sc_lv 32 signal 0 } 
	{ p_src_mat_rows_empty_n sc_in sc_logic 1 signal 0 } 
	{ p_src_mat_rows_read sc_out sc_logic 1 signal 0 } 
	{ p_src_mat_cols_dout sc_in sc_lv 32 signal 1 } 
	{ p_src_mat_cols_empty_n sc_in sc_logic 1 signal 1 } 
	{ p_src_mat_cols_read sc_out sc_logic 1 signal 1 } 
	{ p_src_mat_data_V_dout sc_in sc_lv 8 signal 2 } 
	{ p_src_mat_data_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ p_src_mat_data_V_read sc_out sc_logic 1 signal 2 } 
	{ p_dst_mat_data_V_din sc_out sc_lv 1 signal 3 } 
	{ p_dst_mat_data_V_full_n sc_in sc_logic 1 signal 3 } 
	{ p_dst_mat_data_V_write sc_out sc_logic 1 signal 3 } 
	{ threshold_dout sc_in sc_lv 32 signal 4 } 
	{ threshold_empty_n sc_in sc_logic 1 signal 4 } 
	{ threshold_read sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_src_mat_rows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "dout" }} , 
 	{ "name": "p_src_mat_rows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_rows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "read" }} , 
 	{ "name": "p_src_mat_cols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "dout" }} , 
 	{ "name": "p_src_mat_cols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_cols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "read" }} , 
 	{ "name": "p_src_mat_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_src_mat_data_V", "role": "dout" }} , 
 	{ "name": "p_src_mat_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_data_V", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_data_V", "role": "read" }} , 
 	{ "name": "p_dst_mat_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_mat_data_V", "role": "din" }} , 
 	{ "name": "p_dst_mat_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_mat_data_V", "role": "full_n" }} , 
 	{ "name": "p_dst_mat_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_mat_data_V", "role": "write" }} , 
 	{ "name": "threshold_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "threshold", "role": "dout" }} , 
 	{ "name": "threshold_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold", "role": "empty_n" }} , 
 	{ "name": "threshold_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "fast",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8361897", "EstimateLatencyMax" : "8361897",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_xFFastCornerDetectio_fu_46"}],
		"Port" : [
			{"Name" : "p_src_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xFFastCornerDetectio_fu_46", "Port" : "p_src_mat_data_V"}]},
			{"Name" : "p_dst_mat_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xFFastCornerDetectio_fu_46", "Port" : "p_dst_mat_data_V"}]},
			{"Name" : "threshold", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "threshold_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetectio_fu_46", "Parent" : "0", "Child" : ["2", "25", "37", "38", "39", "40"],
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
			{"ID" : "2", "Name" : "xFfast7x75682_U0"}],
		"OutputProcess" : [
			{"ID" : "25", "Name" : "xFfastnms5781_U0"}],
		"Port" : [
			{"Name" : "p_src_mat_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "xFfast7x75682_U0", "Port" : "p_src_mat_data_V"}]},
			{"Name" : "p_dst_mat_data_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "xFfastnms5781_U0", "Port" : "p_dst_mat_data_V"}]},
			{"Name" : "p_image_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_image_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_threshold", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0", "Parent" : "1", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24"],
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
			{"Name" : "p_dst_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "25", "DependentChan" : "37",
				"BlockSignal" : [
					{"Name" : "p_dst_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_image_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_image_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_image_height_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "25", "DependentChan" : "38",
				"BlockSignal" : [
					{"Name" : "p_image_height_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_image_width_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "25", "DependentChan" : "39",
				"BlockSignal" : [
					{"Name" : "p_image_width_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.buf_0_V_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.buf_1_V_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.buf_2_V_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.buf_3_V_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.buf_4_V_U", "Parent" : "2"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.buf_5_V_U", "Parent" : "2"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.buf_6_V_U", "Parent" : "2"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.fast_accel_mux_73ibs_U16", "Parent" : "2"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.fast_accel_mux_73jbC_U17", "Parent" : "2"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.fast_accel_mux_73jbC_U18", "Parent" : "2"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.fast_accel_mux_73jbC_U19", "Parent" : "2"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.fast_accel_mux_73jbC_U20", "Parent" : "2"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.fast_accel_mux_73jbC_U21", "Parent" : "2"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.fast_accel_mux_73jbC_U22", "Parent" : "2"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.fast_accel_mux_73jbC_U23", "Parent" : "2"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.fast_accel_mux_73jbC_U24", "Parent" : "2"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.fast_accel_mux_73jbC_U25", "Parent" : "2"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.fast_accel_mux_73jbC_U26", "Parent" : "2"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.fast_accel_mux_73jbC_U27", "Parent" : "2"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.fast_accel_mux_73jbC_U28", "Parent" : "2"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.fast_accel_mux_73jbC_U29", "Parent" : "2"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.fast_accel_mux_73jbC_U30", "Parent" : "2"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetectio_fu_46.xFfastnms5781_U0", "Parent" : "1", "Child" : ["26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36"],
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
		"StartSource" : "2",
		"StartFifo" : "start_for_xFfastnpcA_U",
		"Port" : [
			{"Name" : "p_dst_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "37",
				"BlockSignal" : [
					{"Name" : "p_dst_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_mat_data_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_dst_mat_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_image_height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "38",
				"BlockSignal" : [
					{"Name" : "p_image_height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_image_width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "39",
				"BlockSignal" : [
					{"Name" : "p_image_width_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetectio_fu_46.xFfastnms5781_U0.buf_0_V_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetectio_fu_46.xFfastnms5781_U0.buf_1_V_U", "Parent" : "25"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetectio_fu_46.xFfastnms5781_U0.buf_2_V_U", "Parent" : "25"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetectio_fu_46.xFfastnms5781_U0.fast_accel_mux_32ncg_U41", "Parent" : "25"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetectio_fu_46.xFfastnms5781_U0.fast_accel_mux_32ocq_U42", "Parent" : "25"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetectio_fu_46.xFfastnms5781_U0.fast_accel_mux_32ncg_U43", "Parent" : "25"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetectio_fu_46.xFfastnms5781_U0.fast_accel_mux_32ncg_U44", "Parent" : "25"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetectio_fu_46.xFfastnms5781_U0.fast_accel_mux_32ncg_U45", "Parent" : "25"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetectio_fu_46.xFfastnms5781_U0.fast_accel_mux_32ncg_U46", "Parent" : "25"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetectio_fu_46.xFfastnms5781_U0.fast_accel_mux_32ncg_U47", "Parent" : "25"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetectio_fu_46.xFfastnms5781_U0.fast_accel_mux_32ncg_U48", "Parent" : "25"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetectio_fu_46.p_dst_data_V_U", "Parent" : "1"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetectio_fu_46.p_image_height_c_U", "Parent" : "1"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetectio_fu_46.p_image_width_c_U", "Parent" : "1"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetectio_fu_46.start_for_xFfastnpcA_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	fast {
		p_src_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols {Type I LastRead 0 FirstWrite -1}
		p_src_mat_data_V {Type I LastRead 6 FirstWrite -1}
		p_dst_mat_data_V {Type O LastRead -1 FirstWrite 9}
		threshold {Type I LastRead 0 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "8361897", "Max" : "8361897"}
	, {"Name" : "Interval", "Min" : "8361897", "Max" : "8361897"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_src_mat_rows { ap_fifo {  { p_src_mat_rows_dout fifo_data 0 32 }  { p_src_mat_rows_empty_n fifo_status 0 1 }  { p_src_mat_rows_read fifo_update 1 1 } } }
	p_src_mat_cols { ap_fifo {  { p_src_mat_cols_dout fifo_data 0 32 }  { p_src_mat_cols_empty_n fifo_status 0 1 }  { p_src_mat_cols_read fifo_update 1 1 } } }
	p_src_mat_data_V { ap_fifo {  { p_src_mat_data_V_dout fifo_data 0 8 }  { p_src_mat_data_V_empty_n fifo_status 0 1 }  { p_src_mat_data_V_read fifo_update 1 1 } } }
	p_dst_mat_data_V { ap_fifo {  { p_dst_mat_data_V_din fifo_data 1 1 }  { p_dst_mat_data_V_full_n fifo_status 0 1 }  { p_dst_mat_data_V_write fifo_update 1 1 } } }
	threshold { ap_fifo {  { threshold_dout fifo_data 0 32 }  { threshold_empty_n fifo_status 0 1 }  { threshold_read fifo_update 1 1 } } }
}
