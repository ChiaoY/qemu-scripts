#!/bin/bash

BIOS_PATH=$1
qemu-system-aarch64 -M virt-6.2 -m 128M -pflash "${BIOS_PATH}" -hda fat:rw:hda-contents -net none -debugcon file:debug.log -global isa-debugcon.iobase=0x402