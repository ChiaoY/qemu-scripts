#!/bin/bash

set -x

BIOS_PATH=$1

qemu-system-aarch64 \
    -M virt -cpu cortex-a57 \
    -bios "${BIOS_PATH}" \
    -m 1024 \
    -serial stdio