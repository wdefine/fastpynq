#ifndef _XF_AXIS_CONFIG_
#define _XF_AXIS_CONFIG_

#include <iostream>
#include <math.h> 
#include "hls_stream.h"
#include "ap_int.h"
#include "common/xf_common.hpp"
#include "xf_config_params.h"

struct axis_t {
    ap_uint<24> data;
    ap_int<1> last;
};

void fast_accel(axis_t *src, axis_t *dst, int src_rows, int src_cols, int dst_rows, int dst_cols);


#endif