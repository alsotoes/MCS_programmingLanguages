#!/bin/bash
# Only run using md5sum GNU or BSD

CODE=$1
seq 50 | parallel -j20 "go run ${CODE} > {}.out && md5sum {}.out && rm -f {}.out" | cut -d ' ' -f 1 | uniq
