#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /mnt/c/fpgaXilinx/fastPynq/ip/hls/fast/fast/solution1/.autopilot/db/a.g.bc ${1+"$@"}
