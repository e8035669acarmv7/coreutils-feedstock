#!/bin/env bash

FORCE_UNSAFE_CONFIGURE=1 \
./configure --prefix=$PREFIX \
    --disable-year2038

make -j $CPU_COUNT
make install
make installcheck
