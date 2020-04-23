set moduleName Block_Mat_exit73_pro
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {Block_Mat.exit73_pro}
set C_modelType { void 0 }
set C_modelArgList {
	{ src_rows int 32 regular  }
	{ src_cols int 32 regular  }
	{ threshold int 32 regular  }
	{ src_mat_rows_out int 32 regular {fifo 1}  }
	{ src_mat_cols_out int 32 regular {fifo 1}  }
	{ src_rows_cast1_out_out int 12 regular {fifo 1}  }
	{ src_cols_cast2_out_out int 12 regular {fifo 1}  }
	{ threshold_out int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "src_rows", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "src_cols", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "threshold", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "src_mat_rows_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "src_mat_cols_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "src_rows_cast1_out_out", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "src_cols_cast2_out_out", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "threshold_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ src_rows sc_in sc_lv 32 signal 0 } 
	{ src_cols sc_in sc_lv 32 signal 1 } 
	{ threshold sc_in sc_lv 32 signal 2 } 
	{ src_mat_rows_out_din sc_out sc_lv 32 signal 3 } 
	{ src_mat_rows_out_full_n sc_in sc_logic 1 signal 3 } 
	{ src_mat_rows_out_write sc_out sc_logic 1 signal 3 } 
	{ src_mat_cols_out_din sc_out sc_lv 32 signal 4 } 
	{ src_mat_cols_out_full_n sc_in sc_logic 1 signal 4 } 
	{ src_mat_cols_out_write sc_out sc_logic 1 signal 4 } 
	{ src_rows_cast1_out_out_din sc_out sc_lv 12 signal 5 } 
	{ src_rows_cast1_out_out_full_n sc_in sc_logic 1 signal 5 } 
	{ src_rows_cast1_out_out_write sc_out sc_logic 1 signal 5 } 
	{ src_cols_cast2_out_out_din sc_out sc_lv 12 signal 6 } 
	{ src_cols_cast2_out_out_full_n sc_in sc_logic 1 signal 6 } 
	{ src_cols_cast2_out_out_write sc_out sc_logic 1 signal 6 } 
	{ threshold_out_din sc_out sc_lv 32 signal 7 } 
	{ threshold_out_full_n sc_in sc_logic 1 signal 7 } 
	{ threshold_out_write sc_out sc_logic 1 signal 7 } 
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
 	{ "name": "src_rows", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "src_rows", "role": "default" }} , 
 	{ "name": "src_cols", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "src_cols", "role": "default" }} , 
 	{ "name": "threshold", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "threshold", "role": "default" }} , 
 	{ "name": "src_mat_rows_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "src_mat_rows_out", "role": "din" }} , 
 	{ "name": "src_mat_rows_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_mat_rows_out", "role": "full_n" }} , 
 	{ "name": "src_mat_rows_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_mat_rows_out", "role": "write" }} , 
 	{ "name": "src_mat_cols_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "src_mat_cols_out", "role": "din" }} , 
 	{ "name": "src_mat_cols_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_mat_cols_out", "role": "full_n" }} , 
 	{ "name": "src_mat_cols_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_mat_cols_out", "role": "write" }} , 
 	{ "name": "src_rows_cast1_out_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "src_rows_cast1_out_out", "role": "din" }} , 
 	{ "name": "src_rows_cast1_out_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_rows_cast1_out_out", "role": "full_n" }} , 
 	{ "name": "src_rows_cast1_out_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_rows_cast1_out_out", "role": "write" }} , 
 	{ "name": "src_cols_cast2_out_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "src_cols_cast2_out_out", "role": "din" }} , 
 	{ "name": "src_cols_cast2_out_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_cols_cast2_out_out", "role": "full_n" }} , 
 	{ "name": "src_cols_cast2_out_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_cols_cast2_out_out", "role": "write" }} , 
 	{ "name": "threshold_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "threshold_out", "role": "din" }} , 
 	{ "name": "threshold_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold_out", "role": "full_n" }} , 
 	{ "name": "threshold_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Block_Mat_exit73_pro",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "src_rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_mat_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "src_mat_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_mat_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "src_mat_cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_rows_cast1_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "src_rows_cast1_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_cols_cast2_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "src_cols_cast2_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "threshold_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "threshold_out_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	Block_Mat_exit73_pro {
		src_rows {Type I LastRead 0 FirstWrite -1}
		src_cols {Type I LastRead 0 FirstWrite -1}
		threshold {Type I LastRead 0 FirstWrite -1}
		src_mat_rows_out {Type O LastRead -1 FirstWrite 0}
		src_mat_cols_out {Type O LastRead -1 FirstWrite 0}
		src_rows_cast1_out_out {Type O LastRead -1 FirstWrite 0}
		src_cols_cast2_out_out {Type O LastRead -1 FirstWrite 0}
		threshold_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	src_rows { ap_none {  { src_rows in_data 0 32 } } }
	src_cols { ap_none {  { src_cols in_data 0 32 } } }
	threshold { ap_none {  { threshold in_data 0 32 } } }
	src_mat_rows_out { ap_fifo {  { src_mat_rows_out_din fifo_data 1 32 }  { src_mat_rows_out_full_n fifo_status 0 1 }  { src_mat_rows_out_write fifo_update 1 1 } } }
	src_mat_cols_out { ap_fifo {  { src_mat_cols_out_din fifo_data 1 32 }  { src_mat_cols_out_full_n fifo_status 0 1 }  { src_mat_cols_out_write fifo_update 1 1 } } }
	src_rows_cast1_out_out { ap_fifo {  { src_rows_cast1_out_out_din fifo_data 1 12 }  { src_rows_cast1_out_out_full_n fifo_status 0 1 }  { src_rows_cast1_out_out_write fifo_update 1 1 } } }
	src_cols_cast2_out_out { ap_fifo {  { src_cols_cast2_out_out_din fifo_data 1 12 }  { src_cols_cast2_out_out_full_n fifo_status 0 1 }  { src_cols_cast2_out_out_write fifo_update 1 1 } } }
	threshold_out { ap_fifo {  { threshold_out_din fifo_data 1 32 }  { threshold_out_full_n fifo_status 0 1 }  { threshold_out_write fifo_update 1 1 } } }
}
