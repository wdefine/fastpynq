set moduleName xfMat2axis
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
set C_modelName {xfMat2axis}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_dst_data_V int 1 regular {fifo 0 volatile }  }
	{ dst_data_V int 24 regular {axi_s 1 volatile  { dst Data } }  }
	{ dst_last_V int 1 regular {axi_s 1 volatile  { dst Last } }  }
	{ src_rows_cast1_loc int 12 regular {fifo 0}  }
	{ src_cols_cast2_loc int 12 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_dst_data_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "dst_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "src_rows_cast1_loc", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "src_cols_cast2_loc", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_dst_data_V_dout sc_in sc_lv 1 signal 0 } 
	{ p_dst_data_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ p_dst_data_V_read sc_out sc_logic 1 signal 0 } 
	{ dst_TDATA sc_out sc_lv 24 signal 1 } 
	{ dst_TVALID sc_out sc_logic 1 outvld 2 } 
	{ dst_TREADY sc_in sc_logic 1 outacc 2 } 
	{ dst_TLAST sc_out sc_lv 1 signal 2 } 
	{ src_rows_cast1_loc_dout sc_in sc_lv 12 signal 3 } 
	{ src_rows_cast1_loc_empty_n sc_in sc_logic 1 signal 3 } 
	{ src_rows_cast1_loc_read sc_out sc_logic 1 signal 3 } 
	{ src_cols_cast2_loc_dout sc_in sc_lv 12 signal 4 } 
	{ src_cols_cast2_loc_empty_n sc_in sc_logic 1 signal 4 } 
	{ src_cols_cast2_loc_read sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_dst_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_data_V", "role": "dout" }} , 
 	{ "name": "p_dst_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_data_V", "role": "empty_n" }} , 
 	{ "name": "p_dst_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_data_V", "role": "read" }} , 
 	{ "name": "dst_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "dst_data_V", "role": "default" }} , 
 	{ "name": "dst_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dst_last_V", "role": "default" }} , 
 	{ "name": "dst_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "dst_last_V", "role": "default" }} , 
 	{ "name": "dst_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_last_V", "role": "default" }} , 
 	{ "name": "src_rows_cast1_loc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "src_rows_cast1_loc", "role": "dout" }} , 
 	{ "name": "src_rows_cast1_loc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_rows_cast1_loc", "role": "empty_n" }} , 
 	{ "name": "src_rows_cast1_loc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_rows_cast1_loc", "role": "read" }} , 
 	{ "name": "src_cols_cast2_loc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "src_cols_cast2_loc", "role": "dout" }} , 
 	{ "name": "src_cols_cast2_loc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_cols_cast2_loc", "role": "empty_n" }} , 
 	{ "name": "src_cols_cast2_loc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_cols_cast2_loc", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "xfMat2axis",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "16785406",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_dst_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_dst_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "src_rows_cast1_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "src_rows_cast1_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_cols_cast2_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "src_cols_cast2_loc_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_dst_data_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_dst_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xfMat2axis {
		p_dst_data_V {Type I LastRead 3 FirstWrite -1}
		dst_data_V {Type O LastRead -1 FirstWrite 3}
		dst_last_V {Type O LastRead -1 FirstWrite 3}
		src_rows_cast1_loc {Type I LastRead 0 FirstWrite -1}
		src_cols_cast2_loc {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "16785406"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "16785406"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	p_dst_data_V { ap_fifo {  { p_dst_data_V_dout fifo_data 0 1 }  { p_dst_data_V_empty_n fifo_status 0 1 }  { p_dst_data_V_read fifo_update 1 1 } } }
	dst_data_V { axis {  { dst_TDATA out_data 1 24 } } }
	dst_last_V { axis {  { dst_TVALID out_vld 1 1 }  { dst_TREADY out_acc 0 1 }  { dst_TLAST out_data 1 1 } } }
	src_rows_cast1_loc { ap_fifo {  { src_rows_cast1_loc_dout fifo_data 0 12 }  { src_rows_cast1_loc_empty_n fifo_status 0 1 }  { src_rows_cast1_loc_read fifo_update 1 1 } } }
	src_cols_cast2_loc { ap_fifo {  { src_cols_cast2_loc_dout fifo_data 0 12 }  { src_cols_cast2_loc_empty_n fifo_status 0 1 }  { src_cols_cast2_loc_read fifo_update 1 1 } } }
}
