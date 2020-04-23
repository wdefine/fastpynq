set moduleName fast_accel
set isTopModule 1
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
set C_modelName {fast_accel}
set C_modelType { void 0 }
set C_modelArgList {
	{ src_data_V int 24 regular {axi_s 0 volatile  { src Data } }  }
	{ src_last_V int 1 unused {axi_s 0 ""  { src Last } }  }
	{ dst_data_V int 24 regular {axi_s 1 volatile  { dst Data } }  }
	{ dst_last_V int 1 regular {axi_s 1 volatile  { dst Last } }  }
	{ src_rows int 32 regular {axi_slave 0}  }
	{ src_cols int 32 regular {axi_slave 0}  }
	{ threshold int 32 regular {axi_slave 0}  }
	{ unused int 32 unused {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "src_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "READONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "src.data.V","cData": "uint24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "src_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "src.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dst_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "dst.data.V","cData": "uint24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dst_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "dst.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "src_rows", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "src_rows","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "src_cols", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "src_cols","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "threshold", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "threshold","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "unused", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "unused","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":40}, "offset_end" : {"in":47}} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ s_axi_AXILiteS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_AXILiteS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_AXILiteS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_AXILiteS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ src_TDATA sc_in sc_lv 24 signal 0 } 
	{ src_TLAST sc_in sc_lv 1 signal 1 } 
	{ dst_TDATA sc_out sc_lv 24 signal 2 } 
	{ dst_TLAST sc_out sc_lv 1 signal 3 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ src_TVALID sc_in sc_logic 1 invld 0 } 
	{ src_TREADY sc_out sc_logic 1 inacc 0 } 
	{ dst_TVALID sc_out sc_logic 1 outvld 3 } 
	{ dst_TREADY sc_in sc_logic 1 outacc 3 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_AXILiteS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWADDR" },"address":[{"name":"src_rows","role":"data","value":"16"},{"name":"src_cols","role":"data","value":"24"},{"name":"threshold","role":"data","value":"32"},{"name":"unused","role":"data","value":"40"}] },
	{ "name": "s_axi_AXILiteS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWVALID" } },
	{ "name": "s_axi_AXILiteS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWREADY" } },
	{ "name": "s_axi_AXILiteS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WVALID" } },
	{ "name": "s_axi_AXILiteS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WREADY" } },
	{ "name": "s_axi_AXILiteS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WDATA" } },
	{ "name": "s_axi_AXILiteS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WSTRB" } },
	{ "name": "s_axi_AXILiteS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARADDR" },"address":[] },
	{ "name": "s_axi_AXILiteS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARVALID" } },
	{ "name": "s_axi_AXILiteS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARREADY" } },
	{ "name": "s_axi_AXILiteS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RVALID" } },
	{ "name": "s_axi_AXILiteS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RREADY" } },
	{ "name": "s_axi_AXILiteS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RDATA" } },
	{ "name": "s_axi_AXILiteS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RRESP" } },
	{ "name": "s_axi_AXILiteS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BVALID" } },
	{ "name": "s_axi_AXILiteS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BREADY" } },
	{ "name": "s_axi_AXILiteS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "src_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "src_data_V", "role": "default" }} , 
 	{ "name": "src_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "src_last_V", "role": "default" }} , 
 	{ "name": "dst_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "dst_data_V", "role": "default" }} , 
 	{ "name": "dst_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_last_V", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "src_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "src_data_V", "role": "default" }} , 
 	{ "name": "src_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "src_data_V", "role": "default" }} , 
 	{ "name": "dst_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dst_last_V", "role": "default" }} , 
 	{ "name": "dst_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "dst_last_V", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "5", "46", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59"],
		"CDFG" : "fast_accel",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8361898", "EstimateLatencyMax" : "16785416",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "Block_Mat_exit73_pro_U0", "ReadyCount" : "Block_Mat_exit73_pro_U0_ap_ready_count"},
			{"ID" : "3", "Name" : "axis2xfMat_U0", "ReadyCount" : "axis2xfMat_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "46", "Name" : "xfMat2axis_U0"}],
		"Port" : [
			{"Name" : "src_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "axis2xfMat_U0", "Port" : "src_data_V"}]},
			{"Name" : "src_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "dst_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "xfMat2axis_U0", "Port" : "dst_data_V"}]},
			{"Name" : "dst_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "xfMat2axis_U0", "Port" : "dst_last_V"}]},
			{"Name" : "src_rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "unused", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fast_accel_AXILiteS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_Mat_exit73_pro_U0", "Parent" : "0",
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
			{"Name" : "src_mat_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "49",
				"BlockSignal" : [
					{"Name" : "src_mat_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_mat_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "50",
				"BlockSignal" : [
					{"Name" : "src_mat_cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_rows_cast1_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "51",
				"BlockSignal" : [
					{"Name" : "src_rows_cast1_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_cols_cast2_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "52",
				"BlockSignal" : [
					{"Name" : "src_cols_cast2_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "threshold_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "53",
				"BlockSignal" : [
					{"Name" : "threshold_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.axis2xfMat_U0", "Parent" : "0", "Child" : ["4"],
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
			{"Name" : "p_src_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "54",
				"BlockSignal" : [
					{"Name" : "p_src_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_rows_cast1_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "51",
				"BlockSignal" : [
					{"Name" : "src_rows_cast1_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_cols_cast2_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "52",
				"BlockSignal" : [
					{"Name" : "src_cols_cast2_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_rows_cast1_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "46", "DependentChan" : "55",
				"BlockSignal" : [
					{"Name" : "src_rows_cast1_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_cols_cast2_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "46", "DependentChan" : "56",
				"BlockSignal" : [
					{"Name" : "src_cols_cast2_loc_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.axis2xfMat_U0.regslice_both_src_data_V_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fast_U0", "Parent" : "0", "Child" : ["6"],
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
		"StartSource" : "2",
		"StartFifo" : "start_for_fast_U0_U",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_xFFastCornerDetectio_fu_46"}],
		"Port" : [
			{"Name" : "p_src_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "49",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "50",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "54",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_xFFastCornerDetectio_fu_46", "Port" : "p_src_mat_data_V"}]},
			{"Name" : "p_dst_mat_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "46", "DependentChan" : "57",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_xFFastCornerDetectio_fu_46", "Port" : "p_dst_mat_data_V"}]},
			{"Name" : "threshold", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "53",
				"BlockSignal" : [
					{"Name" : "threshold_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fast_U0.grp_xFFastCornerDetectio_fu_46", "Parent" : "5", "Child" : ["7", "30", "42", "43", "44", "45"],
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
			{"ID" : "7", "Name" : "xFfast7x75682_U0"}],
		"OutputProcess" : [
			{"ID" : "30", "Name" : "xFfastnms5781_U0"}],
		"Port" : [
			{"Name" : "p_src_mat_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "xFfast7x75682_U0", "Port" : "p_src_mat_data_V"}]},
			{"Name" : "p_dst_mat_data_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "xFfastnms5781_U0", "Port" : "p_dst_mat_data_V"}]},
			{"Name" : "p_image_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_image_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_threshold", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fast_U0.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0", "Parent" : "6", "Child" : ["8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29"],
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
			{"Name" : "p_dst_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "30", "DependentChan" : "42",
				"BlockSignal" : [
					{"Name" : "p_dst_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_image_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_image_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_image_height_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "30", "DependentChan" : "43",
				"BlockSignal" : [
					{"Name" : "p_image_height_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_image_width_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "30", "DependentChan" : "44",
				"BlockSignal" : [
					{"Name" : "p_image_width_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "8", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_U0.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.buf_0_V_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_U0.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.buf_1_V_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_U0.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.buf_2_V_U", "Parent" : "7"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_U0.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.buf_3_V_U", "Parent" : "7"},
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_U0.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.buf_4_V_U", "Parent" : "7"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_U0.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.buf_5_V_U", "Parent" : "7"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_U0.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.buf_6_V_U", "Parent" : "7"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_U0.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.fast_accel_mux_73ibs_U16", "Parent" : "7"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_U0.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.fast_accel_mux_73jbC_U17", "Parent" : "7"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_U0.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.fast_accel_mux_73jbC_U18", "Parent" : "7"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_U0.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.fast_accel_mux_73jbC_U19", "Parent" : "7"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_U0.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.fast_accel_mux_73jbC_U20", "Parent" : "7"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_U0.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.fast_accel_mux_73jbC_U21", "Parent" : "7"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_U0.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.fast_accel_mux_73jbC_U22", "Parent" : "7"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_U0.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.fast_accel_mux_73jbC_U23", "Parent" : "7"},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_U0.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.fast_accel_mux_73jbC_U24", "Parent" : "7"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_U0.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.fast_accel_mux_73jbC_U25", "Parent" : "7"},
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_U0.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.fast_accel_mux_73jbC_U26", "Parent" : "7"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_U0.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.fast_accel_mux_73jbC_U27", "Parent" : "7"},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_U0.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.fast_accel_mux_73jbC_U28", "Parent" : "7"},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_U0.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.fast_accel_mux_73jbC_U29", "Parent" : "7"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_U0.grp_xFFastCornerDetectio_fu_46.xFfast7x75682_U0.fast_accel_mux_73jbC_U30", "Parent" : "7"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fast_U0.grp_xFFastCornerDetectio_fu_46.xFfastnms5781_U0", "Parent" : "6", "Child" : ["31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41"],
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
		"StartSource" : "7",
		"StartFifo" : "start_for_xFfastnpcA_U",
		"Port" : [
			{"Name" : "p_dst_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "42",
				"BlockSignal" : [
					{"Name" : "p_dst_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_mat_data_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_dst_mat_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_image_height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "43",
				"BlockSignal" : [
					{"Name" : "p_image_height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_image_width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "44",
				"BlockSignal" : [
					{"Name" : "p_image_width_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_U0.grp_xFFastCornerDetectio_fu_46.xFfastnms5781_U0.buf_0_V_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_U0.grp_xFFastCornerDetectio_fu_46.xFfastnms5781_U0.buf_1_V_U", "Parent" : "30"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_U0.grp_xFFastCornerDetectio_fu_46.xFfastnms5781_U0.buf_2_V_U", "Parent" : "30"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_U0.grp_xFFastCornerDetectio_fu_46.xFfastnms5781_U0.fast_accel_mux_32ncg_U41", "Parent" : "30"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_U0.grp_xFFastCornerDetectio_fu_46.xFfastnms5781_U0.fast_accel_mux_32ocq_U42", "Parent" : "30"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_U0.grp_xFFastCornerDetectio_fu_46.xFfastnms5781_U0.fast_accel_mux_32ncg_U43", "Parent" : "30"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_U0.grp_xFFastCornerDetectio_fu_46.xFfastnms5781_U0.fast_accel_mux_32ncg_U44", "Parent" : "30"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_U0.grp_xFFastCornerDetectio_fu_46.xFfastnms5781_U0.fast_accel_mux_32ncg_U45", "Parent" : "30"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_U0.grp_xFFastCornerDetectio_fu_46.xFfastnms5781_U0.fast_accel_mux_32ncg_U46", "Parent" : "30"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_U0.grp_xFFastCornerDetectio_fu_46.xFfastnms5781_U0.fast_accel_mux_32ncg_U47", "Parent" : "30"},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_U0.grp_xFFastCornerDetectio_fu_46.xFfastnms5781_U0.fast_accel_mux_32ncg_U48", "Parent" : "30"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fast_U0.grp_xFFastCornerDetectio_fu_46.p_dst_data_V_U", "Parent" : "6"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fast_U0.grp_xFFastCornerDetectio_fu_46.p_image_height_c_U", "Parent" : "6"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fast_U0.grp_xFFastCornerDetectio_fu_46.p_image_width_c_U", "Parent" : "6"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fast_U0.grp_xFFastCornerDetectio_fu_46.start_for_xFfastnpcA_U", "Parent" : "6"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xfMat2axis_U0", "Parent" : "0", "Child" : ["47", "48"],
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
		"StartSource" : "3",
		"StartFifo" : "start_for_xfMat2aqcK_U",
		"Port" : [
			{"Name" : "p_dst_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "57",
				"BlockSignal" : [
					{"Name" : "p_dst_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "src_rows_cast1_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "55",
				"BlockSignal" : [
					{"Name" : "src_rows_cast1_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_cols_cast2_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "56",
				"BlockSignal" : [
					{"Name" : "src_cols_cast2_loc_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xfMat2axis_U0.regslice_both_dst_data_V_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xfMat2axis_U0.regslice_both_dst_last_V_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.src_mat_rows_c_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.src_mat_cols_c_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.src_rows_cast1_loc_c_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.src_cols_cast2_loc_c_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.threshold_c_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.src_mat_data_V_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.src_rows_cast1_loc_c_1_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.src_cols_cast2_loc_c_1_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dst_mat_data_V_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_fast_U0_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_xfMat2aqcK_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fast_accel {
		src_data_V {Type I LastRead 2 FirstWrite -1}
		src_last_V {Type I LastRead -1 FirstWrite -1}
		dst_data_V {Type O LastRead -1 FirstWrite 3}
		dst_last_V {Type O LastRead -1 FirstWrite 3}
		src_rows {Type I LastRead 0 FirstWrite -1}
		src_cols {Type I LastRead 0 FirstWrite -1}
		threshold {Type I LastRead 0 FirstWrite -1}
		unused {Type I LastRead -1 FirstWrite -1}}
	Block_Mat_exit73_pro {
		src_rows {Type I LastRead 0 FirstWrite -1}
		src_cols {Type I LastRead 0 FirstWrite -1}
		threshold {Type I LastRead 0 FirstWrite -1}
		src_mat_rows_out {Type O LastRead -1 FirstWrite 0}
		src_mat_cols_out {Type O LastRead -1 FirstWrite 0}
		src_rows_cast1_out_out {Type O LastRead -1 FirstWrite 0}
		src_cols_cast2_out_out {Type O LastRead -1 FirstWrite 0}
		threshold_out {Type O LastRead -1 FirstWrite 0}}
	axis2xfMat {
		src_data_V {Type I LastRead 2 FirstWrite -1}
		p_src_data_V {Type O LastRead -1 FirstWrite 3}
		src_rows_cast1_loc {Type I LastRead 0 FirstWrite -1}
		src_cols_cast2_loc {Type I LastRead 0 FirstWrite -1}
		src_rows_cast1_loc_out {Type O LastRead -1 FirstWrite 0}
		src_cols_cast2_loc_out {Type O LastRead -1 FirstWrite 0}}
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
		p_image_width {Type I LastRead 0 FirstWrite -1}}
	xfMat2axis {
		p_dst_data_V {Type I LastRead 3 FirstWrite -1}
		dst_data_V {Type O LastRead -1 FirstWrite 3}
		dst_last_V {Type O LastRead -1 FirstWrite 3}
		src_rows_cast1_loc {Type I LastRead 0 FirstWrite -1}
		src_cols_cast2_loc {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8361898", "Max" : "16785416"}
	, {"Name" : "Interval", "Min" : "8361898", "Max" : "16785407"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	src_data_V { axis {  { src_TDATA in_data 0 24 }  { src_TVALID in_vld 0 1 }  { src_TREADY in_acc 1 1 } } }
	src_last_V { axis {  { src_TLAST in_data 0 1 } } }
	dst_data_V { axis {  { dst_TDATA out_data 1 24 } } }
	dst_last_V { axis {  { dst_TLAST out_data 1 1 }  { dst_TVALID out_vld 1 1 }  { dst_TREADY out_acc 0 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
