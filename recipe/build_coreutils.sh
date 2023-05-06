#!/bin/env bash

FORCE_UNSAFE_CONFIGURE=1 \
./configure --prefix=$PREFIX \
    ac_year2038_required=no

make -j $CPU_COUNT
make install
make installcheck
