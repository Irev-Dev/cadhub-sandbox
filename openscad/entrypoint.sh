#!/bin/sh -l

echo "Hello $1"
time=$(date)
ls
what=$(ls)
echo "hey $what"
echo "::set-output name=time::$time"

# xvfb-run --auto-servernum --server-args "-screen 0 1024x768x24" openscad-nightly -o ${customizerPath} -o ${stlPath} -p /tmp/${tempFile}/params.json -P default /tmp/${tempFile}/main.scad
# xvfb-run --auto-servernum --server-args "-screen 0 1024x768x24" openscad-nightly -o ${stlPath} -P default /tmp/${tempFile}/main.scad
#  --export-format=binstl`,