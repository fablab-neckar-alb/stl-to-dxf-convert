#!/usr/bin/env bash
filename=$(basename "$1")
filename="${filename%.*}"
openscad -o ${filename}.dxf -Dfilename=${filename}.stl convert.scad
