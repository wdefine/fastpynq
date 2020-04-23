#include "xf_fast_config.h"
#include "xf_axis_config.h"

void axis2xfMat (axis_t *src, 
		 xf::cv::Mat<TYPE, HEIGHT, WIDTH, NPC1> &_src, 
		 int src_rows, int src_cols) {
#pragma HLS inline off

	for (int i=0; i<src_rows; i++) {
		for (int j=0; j<src_cols; j++) {
#pragma HLS pipeline
#pragma HLS loop_flatten off
			_src.data[i*src_cols+j] = src[i*src_cols+j].data;
		}	
	}

}

void xfMat2axis (xf::cv::Mat<TYPE, NEWHEIGHT, NEWWIDTH, NPC1> &_dst,
		 axis_t *dst,
		 int dst_rows, int dst_cols) {
#pragma HLS inline off

	for (int i=0; i<dst_rows; i++) {
		for (int j=0; j<dst_cols; j++) {
#pragma HLS pipeline
#pragma HLS loop_flatten off
			ap_uint<1> tmp = 0;
			if ((i==dst_rows-1) && (j== dst_cols-1)) {
				tmp = 1;
			}
			dst[i*dst_cols+j].last = tmp;
			dst[i*dst_cols+j].data = _dst.data[i*dst_cols+j];
		}
	}
}

extern "C" {

void fast_accel(axis_t *src, axis_t *dst, int src_rows, int src_cols, int threshold, int unused) {
// clang-format off
#pragma HLS INTERFACE axis port=src //depth=384*288 // Added depth for C/RTL cosimulation
#pragma HLS INTERFACE axis port=dst //depth=192*144 // Added depth for C/RTL cosimulation
#pragma HLS INTERFACE s_axilite port=src_rows
#pragma HLS INTERFACE s_axilite port=src_cols
#pragma HLS INTERFACE s_axilite port=threshold
#pragma HLS INTERFACE s_axilite port=threshold
#pragma HLS INTERFACE s_axilite port=unused
    // clang-format on

    xf::cv::Mat<TYPE, HEIGHT, WIDTH, NPC1> src_mat(src_rows, src_cols);
    xf::cv::Mat<TYPE, HEIGHT, WIDTH, NPC1> dst_mat(src_rows, src_cols);

// clang-format off
    #pragma HLS STREAM variable=src_mat.data depth=150
    #pragma HLS STREAM variable=dst_mat.data depth=150
// clang-format on

// clang-format off
    #pragma HLS DATAFLOW
    // clang-format on
    unsigned char threshold_c =  (unsigned char) threshold;

    // Retrieve xf::cv::Mat objects from img_in data:
    axis2xfMat(src, src_mat, src_rows, src_cols);

    // Run xfOpenCV kernel:
    xf::cv::fast<NMS, TYPE, HEIGHT, WIDTH, NPC1>(src_mat, dst_mat, threshold_c);

    // Convert _dst xf::cv::Mat object to output array:
    xfMat2axis(dst_mat, dst, src_rows, src_cols);	

    return;
} // End of kernel

} // End of extern C