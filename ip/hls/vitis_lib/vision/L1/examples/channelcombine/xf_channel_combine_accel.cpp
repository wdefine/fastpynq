/*
 * Copyright 2019 Xilinx, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include "xf_channel_combine_config.h"

#if TWO_INPUT
void channel_combine_accel(xf::cv::Mat<IN_TYPE, HEIGHT, WIDTH, NPC>& imgInput1,
                           xf::cv::Mat<IN_TYPE, HEIGHT, WIDTH, NPC>& imgInput2,
                           xf::cv::Mat<OUT_TYPE, HEIGHT, WIDTH, NPC>& imgOutput) {
    xf::cv::merge<IN_TYPE, OUT_TYPE, HEIGHT, WIDTH, NPC>(imgInput1, imgInput2, imgOutput);
}
#endif
#if THREE_INPUT
void channel_combine_accel(xf::cv::Mat<IN_TYPE, HEIGHT, WIDTH, NPC>& imgInput1,
                           xf::cv::Mat<IN_TYPE, HEIGHT, WIDTH, NPC>& imgInput2,
                           xf::cv::Mat<IN_TYPE, HEIGHT, WIDTH, NPC>& imgInput3,
                           xf::cv::Mat<OUT_TYPE, HEIGHT, WIDTH, NPC>& imgOutput) {
    xf::cv::merge<IN_TYPE, OUT_TYPE, HEIGHT, WIDTH, NPC>(imgInput1, imgInput2, imgInput3, imgOutput);
}
#endif
#if FOUR_INPUT
void channel_combine_accel(xf::cv::Mat<XF_8UC1, HEIGHT, WIDTH, NPC>& imgInput1,
                           xf::cv::Mat<XF_8UC1, HEIGHT, WIDTH, NPC>& imgInput2,
                           xf::cv::Mat<XF_8UC1, HEIGHT, WIDTH, NPC>& imgInput3,
                           xf::cv::Mat<XF_8UC1, HEIGHT, WIDTH, NPC>& imgInput4,
                           xf::cv::Mat<OUT_TYPE, HEIGHT, WIDTH, NPC>& imgOutput) {
    xf::cv::merge<IN_TYPE, OUT_TYPE, HEIGHT, WIDTH, NPC>(imgInput1, imgInput2, imgInput3, imgInput4, imgOutput);
}
#endif
