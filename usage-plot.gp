#!/usr/bin/gnuplot -c
# Plot memory and CPU usage over time. Usage:
# ./usage-plot.gp <input file> [<output .png file>]


# Arguments:
infile=ARG1
outfile=ARG2

set title '' . infile . '  CPU & Memory 使用率' 

# Output to png with a font size of 10, using pngcairo for anti-aliasing
	set term pngcairo size 1024,800 noenhanced font "Helvetica,10"
# Set border color around the graph
	set border ls 50 lt rgb "#939393"
# Hide left and right vertical borders
	set border 16 lw 0
	set border 64 lw 0
# Set tic color
	set tics nomirror textcolor rgb "#939393"
# Set horizontal lines on the ytics
	set grid ytics lt 1 lc rgb "#d8d8d8" lw 2
# Rotate x axis lables
	set xtics rotate
# Set graph size relative to the canvas
	set size 1,0.85
# Set separator to comma
	set datafile separator ","
# Move legend to the bottom
	set key bmargin center box lt rgb "#d8d8d8" horizontal

set ylabel "使用率(%)"

set output outfile

plot infile using 2:xticlabels(1) with lines smooth unique lw 2 lt rgb "#4848d6" t "CPU Usage %",\
     infile using 3:xticlabels(1) with lines smooth unique lw 2 lt rgb "#b40000" t "    Memory Usage %"
