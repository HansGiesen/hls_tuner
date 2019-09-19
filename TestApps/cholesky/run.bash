#!/bin/bash -e
../../HLS_tuner/hlstuner/hls_tuner.py src pragmas.yml output --overwrite --parallelism 1 --technique CombinedModel --max_luts 4500
