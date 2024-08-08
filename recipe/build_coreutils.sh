#!/bin/env bash

./configure --prefix=$PREFIX \
    --disable-year2038

make -j $CPU_COUNT
make install
make installcheck
