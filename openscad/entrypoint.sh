#!/bin/sh -l

echo "Hello $1"
time=$(date)
ls -lah

xvfb-run --auto-servernum --server-args "-screen 0 1024x768x24" openscad-nightly -o ./output.stl -P default ./basic.scad

ls -lah


echo "::set-output name=time::$time"

# xvfb-run --auto-servernum --server-args "-screen 0 1024x768x24" openscad-nightly -o ${customizerPath} -o ${stlPath} -p /tmp/${tempFile}/params.json -P default /tmp/${tempFile}/main.scad
#  --export-format=binstl`,