set moduleName axis2xfMat
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
set C_modelName {axis2xfMat}
set C_modelType { void 0 }
set C_modelArgList {
	{ src_data_V int 24 regular {axi_s 0 volatile  { src Data } }  }
	{ p_src_data_V int 8 regular {fifo 1 volatile }  }
	{ src_rows_cast1_loc int 12 regular {fifo 0}  }
	{ src_cols_cast2_loc int 12 regular {fifo 0}  }
	{ src_rows_cast1_loc_out int 12 regular {fifo 1}  }
	{ src_cols_cast2_loc_out int 12 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "src_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "src_rows_cast1_loc", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "src_cols_cast2_loc", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "src_rows_cast1_loc_out", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "src_cols_cast2_loc_out", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
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
	{ src_TDATA sc_in sc_lv 24 signal 0 } 
	{ src_TVALID sc_in sc_logic 1 invld 0 } 
	{ src_TREADY sc_out sc_logic 1 inacc 0 } 
	{ p_src_data_V_din sc_out sc_lv 8 signal 1 } 
	{ p_src_data_V_full_n sc_in sc_logic 1 signal 1 } 
	{ p_src_data_V_write sc_out sc_logic 1 signal 1 } 
	{ src_rows_cast1_loc_dout sc_in sc_lv 12 signal 2 } 
	{ src_rows_cast1_loc_empty_n sc_in sc_logic 1 signal 2 } 
	{ src_rows_cast1_loc_read sc_out sc_logic 1 signal 2 } 
	{ src_cols_cast2_loc_dout sc_in sc_lv 12 signal 3 } 
	{ src_cols_cast2_loc_empty_n sc_in sc_logic 1 signal 3 } 
	{ src_cols_cast2_loc_read sc_out sc_logic 1 signal 3 } 
	{ src_rows_cast1_loc_out_din sc_out sc_lv 12 signal 4 } 
	{ src_rows_cast1_loc_out_full_n sc_in sc_logic 1 signal 4 } 
	{ src_rows_cast1_loc_out_write sc_out sc_logic 1 signal 4 } 
	{ src_cols_cast2_loc_out_din sc_out sc_lv 12 signal 5 } 
	{ src_cols_cast2_loc_out_full_n sc_in sc_logic 1 signal 5 } 
	{ src_cols_cast2_loc_out_write sc_out sc_logic 1 signal 5 } 
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
 	{ "name": "src_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "src_data_V", "role": "default" }} , 
 	{ "name": "src_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "src_data_V", "role": "default" }} , 
 	{ "name": "src_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "src_data_V", "role": "default" }} , 
 	{ "name": "p_src_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_src_data_V", "role": "din" }} , 
 	{ "name": "p_src_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_data_V", "role": "full_n" }} , 
 	{ "name": "p_src_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_data_V", "role": "write" }} , 
 	{ "name": "src_rows_cast1_loc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "src_rows_cast1_loc", "role": "dout" }} , 
 	{ "name": "src_rows_cast1_loc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_rows_cast1_loc", "role": "empty_n" }} , 
 	{ "name": "src_rows_cast1_loc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_rows_cast1_loc", "role": "read" }} , 
 	{ "name": "src_cols_cast2_loc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "src_cols_cast2_loc", "role": "dout" }} , 
 	{ "name": "src_cols_cast2_loc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_cols_cast2_loc", "role": "empty_n" }} , 
 	{ "name": "src_cols_cast2_loc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_cols_cast2_loc", "role": "read" }} , 
 	{ "name": "src_rows_cast1_loc_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "src_rows_cast1_loc_out", "role": "din" }} , 
 	{ "name": "src_rows_cast1_loc_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_rows_cast1_loc_out", "role": "full_n" }} , 
 	{ "name": "src_rows_cast1_loc_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_rows_cast1_loc_out", "role": "write" }} , 
 	{ "name": "src_cols_cast2_loc_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "src_cols_cast2_loc_out", "role": "din" }} , 
 	{ "name": "src_cols_cast2_loc_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_cols_cast2_loc_out", "role": "full_n" }} , 
 	{ "name": "src_cols_cast2_loc_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_cols_cast2_loc_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "axis2xfMat",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "16781311",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "src_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "src_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_src_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_rows_cast1_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "src_rows_cast1_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_cols_cast2_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "src_cols_cast2_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_rows_cast1_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "src_rows_cast1_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_cols_cast2_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "src_cols_cast2_loc_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_src_data_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	axis2xfMat {
		src_data_V {Type I LastRead 2 FirstWrite -1}
		p_src_data_V {Type O LastRead -1 FirstWrite 3}
		src_rows_cast1_loc {Type I LastRead 0 FirstWrite -1}
		src_cols_cast2_loc {Type I LastRead 0 FirstWrite -1}
		src_rows_cast1_loc_out {Type O LastRead -1 FirstWrite 0}
		src_cols_cast2_loc_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "16781311"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "16781311"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	src_data_V { axis {  { src_TDATA in_data 0 24 }  { src_TVALID in_vld 0 1 }  { src_TREADY in_acc 1 1 } } }
	p_src_data_V { ap_fifo {  { p_src_data_V_din fifo_data 1 8 }  { p_src_data_V_full_n fifo_status 0 1 }  { p_src_data_V_write fifo_update 1 1 } } }
	src_rows_cast1_loc { ap_fifo {  { src_rows_cast1_loc_dout fifo_data 0 12 }  { src_rows_cast1_loc_empty_n fifo_status 0 1 }  { src_rows_cast1_loc_read fifo_update 1 1 } } }
	src_cols_cast2_loc { ap_fifo {  { src_cols_cast2_loc_dout fifo_data 0 12 }  { src_cols_cast2_loc_empty_n fifo_status 0 1 }  { src_cols_cast2_loc_read fifo_update 1 1 } } }
	src_rows_cast1_loc_out { ap_fifo {  { src_rows_cast1_loc_out_din fifo_data 1 12 }  { src_rows_cast1_loc_out_full_n fifo_status 0 1 }  { src_rows_cast1_loc_out_write fifo_update 1 1 } } }
	src_cols_cast2_loc_out { ap_fifo {  { src_cols_cast2_loc_out_din fifo_data 1 12 }  { src_cols_cast2_loc_out_full_n fifo_status 0 1 }  { src_cols_cast2_loc_out_write fifo_update 1 1 } } }
}
