#!/bin/bash

BIOS_PATH=$1

qemu-system-x86_64 -pflash "${BIOS_PATH}" -net none -debugcon file:debug.log -global isa-debugcon.iobase=0x402 -nographic