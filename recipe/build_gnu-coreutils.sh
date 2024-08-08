#!/bin/env bash

./configure --prefix=$PREFIX --program-prefix=g \
    --disable-year2038

make -j $CPU_COUNT
make install
make installcheck
