set terminal epslatex standalone header \
" \
\\usepackage{amssymb, amsmath, bm}\n\
\\usepackage{siunitx}\n \
"
set terminal epslatex size 5, 2.6 standalone color solid 9
 
set encoding utf8
set datafile separator ','

set tics front 
set border front
set border lw 3 
set size ratio 1
  
if (!exists("fname")) fname='test'

oname = sprintf("%s.tex", fname)
set output oname

file1= sprintf('./iwamuro/PAA0.5wt_VelocityVSViscosityperthickness_39kHz.csv')
file2= sprintf('./iwamuro/PAA0.5wt_VelocityVSViscosityperthickness_72kHz.csv')
file3= sprintf('./iwamuro/PAA0.5wt_VelocityVSViscosityperthickness_147kHz.csv')
file4= sprintf('./iwamuro/PAA0.5wt_VelocityVSViscosityperthickness_23kHz.csv')

file5= sprintf('./iwamuro/CMC1.0wt_VelocityVSViscosityperthickness_39kHz.csv')
file6= sprintf('./iwamuro/CMC1.0wt_VelocityVSViscosityperthickness_72kHz.csv')
file7= sprintf('./iwamuro/CMC1.0wt_VelocityVSViscosityperthickness_147kHz.csv')
file8= sprintf('./iwamuro/CMC1.0wt_VelocityVSViscosityperthickness_23kHz.csv')

file9= sprintf('./iwamuro/VelocityVSViscosityperthickness_39kHz.csv')
file10= sprintf('./iwamuro/VelocityVSViscosityperthickness_72kHz.csv')
file11= sprintf('./iwamuro/VelocityVSViscosityperthickness_147kHz.csv')

file12= sprintf('./iwamuro/iwamuro_PAA1_100.csv')
file13= sprintf('./iwamuro/iwamuro_PAA1_180.csv')

d8 = sprintf('../diameter/data/8.csv')
d10 = sprintf('../diameter/data/10.csv')
d11 = sprintf('../diameter/data/11.csv')
d12 = sprintf('../diameter/data/12.csv')
d13 = sprintf('../diameter/data/13.csv')
d14 = sprintf('../diameter/data/14.csv')
d15 = sprintf('../diameter/data/15.csv')
d20 = sprintf('../diameter/data/20.csv')

d5_05 = sprintf('../diameter-0.5/data/5.csv')
d10_05 = sprintf('../diameter-0.5/data/10.csv')
d15_05 = sprintf('../diameter-0.5/data/15.csv')
d20_05 = sprintf('../diameter-0.5/data/20.csv')

d5_02 = sprintf('../diameter-0.2-1.3/data/0.2-5.csv')
d10_02 = sprintf('../diameter-0.2-1.3/data/0.2-10.csv')

d10_13 = sprintf('../diameter-0.2-1.3/data/1.3-10.csv')
d15_13 = sprintf('../diameter-0.2-1.3/data/1.3-15.csv')
d20_13 = sprintf('../diameter-0.2-1.3/data/1.3-20.csv')

al_02 = sprintf('./data/al/0.2.csv')
al_05 = sprintf('./data/al/0.5.csv')
al_07 = sprintf('./data/al/0.7.csv')
al_10 = sprintf('./data/al/1.0.csv')
al_13 = sprintf('./data/al/1.3.csv')

alumina_02 = sprintf('./data/alumina/0.2.csv')
alumina_05 = sprintf('./data/alumina/0.5.csv')
alumina_07 = sprintf('./data/alumina/0.7.csv')
alumina_10 = sprintf('./data/alumina/1.0.csv')
alumina_13 = sprintf('./data/alumina/1.3.csv')
alumina_15 = sprintf('./data/alumina/1.5.csv')

stainless_02 = sprintf('./data/stainless/0.2.csv')
stainless_05 = sprintf('./data/stainless/0.5.csv')
stainless_07 = sprintf('./data/stainless/0.7.csv')
stainless_10 = sprintf('./data/stainless/1.0.csv')
stainless_13 = sprintf('./data/stainless/1.3.csv')
stainless_15 = sprintf('./data/stainless/1.5.csv')

brass_02 = sprintf('./data/brass/0.2.csv')
brass_05 = sprintf('./data/brass/0.5.csv')
brass_07 = sprintf('./data/brass/0.7.csv')
brass_10 = sprintf('./data/brass/1.0.csv')
brass_13 = sprintf('./data/brass/1.3.csv')
brass_15 = sprintf('./data/brass/1.5.csv')

lx = 40.0
ly = 200.0
 
set multiplot
 
set style line 101 lt 1 lw 4 ps 2 lc rgb '#d62728' # red
set style line 102 lt 1 lw 4 ps 2 lc rgb '#1f77b4' # blue
set style line 103 lt 1 lw 4 ps 2 lc rgb '#2ca02c' # green
set style line 104 lt 1 lw 4 ps 2 lc rgb '#ff7f0e' # orange
set style line 105 lt 1 lw 4 ps 2 lc rgb '#17becf' # light-blue
set style line 106 lt 1 lw 4 ps 2 lc rgb '#9467bd' # purple
set style line 107 lt 1 lw 4 ps 2 lc rgb '#bcbd22' # yellow
set style line 108 lt 1 lw 4 ps 2 lc rgb '#e377c2' # orchid
set style line 109 lt 1 lw 4 ps 2 lc rgb '#7f7f7f' # gray
set style line 110 lt 1 lw 4 ps 2 lc rgb '#8c564b' # brown
 
set style line 111 lt 1 lw 4 ps 2 lc rgb '#ff9896' # red
set style line 112 lt 1 lw 4 ps 2 lc rgb '#aec7e8' # blue
set style line 113 lt 1 lw 4 ps 2 lc rgb '#98df8a' # green
set style line 114 lt 1 lw 4 ps 2 lc rgb '#ffbb78' # orange
set style line 115 lt 1 lw 4 ps 2 lc rgb '#9edae5' # light-blue
set style line 116 lt 1 lw 4 ps 2 lc rgb '#c5b0d5' # purple
set style line 117 lt 1 lw 4 ps 2 lc rgb '#dbdb8d' # yellow
set style line 118 lt 1 lw 4 ps 2 lc rgb '#f7b6d2' # orchid
set style line 119 lt 1 lw 4 ps 2 lc rgb '#c7c7c7' # gray
set style line 120 lt 1 lw 4 ps 2 lc rgb '#c49c94' # brown

set style line 301 lt 1 lw 4 ps 2 lc rgb '#d894ff'
set style line 302 lt 1 lw 4 ps 2 lc rgb '#cb70ff'
set style line 303 lt 1 lw 4 ps 2 lc rgb '#be4dff'
set style line 304 lt 1 lw 4 ps 2 lc rgb '#b029ff'
set style line 305 lt 1 lw 4 ps 2 lc rgb '#a305ff'
set style line 306 lt 1 lw 4 ps 2 lc rgb '#8e00e0'
set style line 307 lt 1 lw 4 ps 2 lc rgb '#7800bd'
set style line 308 lt 1 lw 4 ps 2 lc rgb '#610099'

set palette defined (0 '#999999',\
                     1 '#00008b',\
					 2 '#2ca9e1',\
					 3 '#008000',\
					 4 '#c8c800',\
					 5 '#ff0000',\
					 6 '#1a1a1a') positive
 
set format '$%g$'

set size ratio 0.9
set style fill solid 10

set label 12 center at screen 0.56,0.25 '\footnotesize{0.2 wt.\%}'
set label 13 center at screen 0.56,0.20 '\footnotesize{0.5 wt.\%}'
set label 14 center at screen 0.56,0.15 '\footnotesize{0.7 wt.\%}'
set label 15 center at screen 0.56,0.10 '\footnotesize{1.0 wt.\%}'
set label 16 center at screen 0.56,0.05 '\footnotesize{1.3 wt.\%}'
set label 17 center at screen 0.56,0 '\footnotesize{1.5 wt.\%}'

set label 22 center at screen 0.67,0.35 '\footnotesize{Aluminum}'
set label 26 center at screen 0.78,0.35 '\footnotesize{Alumina}'
set label 23 center at screen 0.89,0.40 '\footnotesize{Steel/}'
set label 24 center at screen 0.89,0.35 '\footnotesize{Stainless}'
set label 25 center at screen 1.0,0.35 '\footnotesize{Brass}'

set label 32 center at screen 0.67,0.30 '\footnotesize{2700}'
set label 36 center at screen 0.78,0.30 '\footnotesize{3800}'
set label 33 center at screen 0.89,0.30 '\footnotesize{7900}'
set label 34 center at screen 1.0,0.30 '\footnotesize{8700}'

set label 39 center at screen 0.56,0.30 '\footnotesize{$\rho$[kg/m$^3$]}'

#0.2
set label 52 center at screen 0.67,0.25 point ls 101 pt 2 ps 1.5
set label 53 center at screen 0.89,0.25 point ls 103 pt 2 ps 1.5
set label 54 center at screen 1,0.25 point ls 104 pt 2 ps 1.5
set label 55 center at screen 0.78,0.25 point ls 102 pt 2 ps 1.5

#0.5
set label 62 center at screen 0.67,0.20 point ls 101 pt 6 ps 1.5
set label 63 center at screen 0.89,0.20 point ls 103 pt 6 ps 1.5
set label 64 center at screen 1,0.20 point ls 104 pt 6 ps 1.5
set label 65 center at screen 0.78,0.20 point ls 102 pt 6 ps 1.5

#0.7
set label 72 center at screen 0.67,0.15 point ls 101 pt 4 ps 1.5
set label 73 center at screen 0.89,0.15 point ls 103 pt 4 ps 1.5
set label 74 center at screen 1,0.15 point ls 104 pt 4 ps 1.5
set label 75 center at screen 0.78,0.15 point ls 102 pt 4 ps 1.5

#1.0
set label 82 center at screen 0.67,0.10 point ls 101 pt 8 ps 1.5
set label 83 center at screen 0.89,0.10 point ls 103 pt 8 ps 1.5
set label 84 center at screen 1,0.10 point ls 104 pt 8 ps 1.5
set label 85 center at screen 0.78,0.10 point ls 102 pt 8 ps 1.5

#1.3
set label 102 center at screen 0.67,0.05 point ls 101 pt 10 ps 1.5
set label 103 center at screen 0.89,0.05 point ls 103 pt 10 ps 1.5
set label 104 center at screen 1,0.05 point ls 104 pt 10 ps 1.5
set label 105 center at screen 0.78,0.05 point ls 102 pt 10 ps 1.5

set label 113 center at screen 0.89,0 point ls 103 pt 12 ps 1.5
set label 114 center at screen 1,0 point ls 104 pt 12 ps 1.5
set label 115 center at screen 0.78,0 point ls 102 pt 12 ps 1.5

set label 991 center at screen 0.65,0.74 point ls 111 pt 6 ps 1.5
set label 902 center at screen 0.74,0.74 '\footnotesize{Iwamuro(2020)}'

set label 110 center at screen 0.56,0.64 '\footnotesize{Steel}'
set label 998 center at screen 0.56,0.6 '\footnotesize{0.2 wt.\%}'
set label 111 center at screen 0.56,0.55 '\footnotesize{0.5 wt.\%}'
set label 999 center at screen 0.56,0.5 '\footnotesize{1.0 wt.\%}'
set label 997 center at screen 0.56,0.45 '\footnotesize{1.3 wt.\%}'
set label 112 center at screen 0.56,0.68 '\footnotesize{$D$[mm]}'

set label 121 center at screen 0.65,0.665 '\small{5}'
set label 122 center at screen 0.696,0.665 '\small{8}'
set label 123 center at screen 0.742,0.665 '\small{10}'
set label 124 center at screen 0.788,0.665 '\small{11}'
set label 125 center at screen 0.834,0.665 '\small{12}'
set label 126 center at screen 0.88,0.665 '\small{13}'
set label 127 center at screen 0.926,0.665 '\small{14}'
set label 128 center at screen 0.972,0.665 '\small{15}'
set label 129 center at screen 1.018,0.665 '\small{20}'

set label 132 center at screen 0.696,0.5 point ls 301 pt 14 ps 1.5
set label 133 center at screen 0.742,0.5 point ls 302 pt 14 ps 1.5
set label 134 center at screen 0.788,0.5 point ls 303 pt 14 ps 1.5
set label 135 center at screen 0.834,0.5 point ls 304 pt 14 ps 1.5
set label 136 center at screen 0.88,0.5 point ls 305 pt 14 ps 1.5
set label 137 center at screen 0.926,0.5 point ls 306 pt 14 ps 1.5
set label 138 center at screen 0.972,0.5 point ls 307 pt 14 ps 1.5
set label 131 center at screen 1.018,0.5 point ls 308 pt 14 ps 1.5

set label 142 center at screen 0.65,0.55 point ls 301 pt 6 ps 1.5
set label 143 center at screen 0.742,0.55 point ls 302 pt 6 ps 1.5
set label 148 center at screen 0.972,0.55 point ls 307 pt 6 ps 1.5
set label 141 center at screen 1.018,0.55 point ls 308 pt 6 ps 1.5

set label 152 center at screen 0.65,0.60 point ls 301 pt 2 ps 1.5
set label 153 center at screen 0.742,0.60 point ls 302 pt 2 ps 1.5

set label 161 center at screen 0.742,0.45 point ls 302 pt 10 ps 1.5
set label 162 center at screen 0.972,0.45 point ls 307 pt 10 ps 1.5
set label 163 center at screen 1.018,0.45 point ls 308 pt 10 ps 1.5
 
####################################################################################################
 
set lmargin screen 0
set rmargin screen 0.5

set tmargin screen 1
set bmargin screen 0
 
####################################################################################################
 
set key width 0.5 box opaque spacing 1.1 samplen 1 Left reverse
set key at screen 1,0.13
unset key
 
####################################################################################################

set logscale x

set format x '$%g$'
set xlabel '{\Large $\displaystyle \frac{\mu_{U}}{\mu_{ABL}}\cdot \frac{\delta}{a}$ [$\SI{}{-}$]}' offset 0,-0.5
set xrange [0.005:10]
set xtics 10
set mxtics 5
 
set ylabel '{\Large $\displaystyle U_\text{on}/U_\text{off}[$\SI{}{-}$]$}' offset 0,0
set format y '$%g$'
set yrange [0.8:1.6]
set ytics 0.2 offset 0,0
set mytics 2
 
plot \
file1 using 1:3:2:4 with xyerrorbars ls 111 pt  6 ps 1.6 lw 4 title 'Iwamuro(2020)',\
file1 using 5:7:6:8 with xyerrorbars ls 111 pt  6 ps 1.6 lw 4 title '',\
file1 using 9:11:10:12 with xyerrorbars ls 111 pt  6 ps 1.6 lw 4 title '',\
file2 using 1:3:2:4 with xyerrorbars ls 111 pt  6 ps 1.6 lw 4 title '',\
file2 using 5:7:6:8 with xyerrorbars ls 111 pt  6 ps 1.6 lw 4 title '',\
file2 using 9:11:10:12 with xyerrorbars ls 111 pt  6 ps 1.6 lw 4 title '',\
file3 using 1:3:2:4 with xyerrorbars ls 111 pt  6 ps 1.6 lw 4 title '',\
file3 using 5:7:6:8 with xyerrorbars ls 111 pt  6 ps 1.6 lw 4 title '',\
file3 using 9:11:10:12 with xyerrorbars ls 111 pt  6 ps 1.6 lw 4 title '',\
file4 using 1:3:2:4 with xyerrorbars ls 111 pt  6 ps 1.6 lw 4 title '',\
file4 using 5:7:6:8 with xyerrorbars ls 111 pt  6 ps 1.6 lw 4 title '',\
file4 using 9:11:10:12 with xyerrorbars ls 111 pt  6 ps 1.6 lw 4 title '',\
file5 using 1:3:2:4 with xyerrorbars ls 111 pt  6 ps 1.6 lw 4 title '',\
file5 using 5:7:6:8 with xyerrorbars ls 111 pt  6 ps 1.6 lw 4 title '',\
file5 using 9:11:10:12 with xyerrorbars ls 111 pt  6 ps 1.6 lw 4 title '',\
file6 using 1:3:2:4 with xyerrorbars ls 111 pt  6 ps 1.6 lw 4 title '',\
file6 using 5:7:6:8 with xyerrorbars ls 111 pt  6 ps 1.6 lw 4 title '',\
file6 using 9:11:10:12 with xyerrorbars ls 111 pt  6 ps 1.6 lw 4 title '',\
file7 using 1:3:2:4 with xyerrorbars ls 111 pt  6 ps 1.6 lw 4 title '',\
file7 using 5:7:6:8 with xyerrorbars ls 111 pt  6 ps 1.6 lw 4 title '',\
file7 using 9:11:10:12 with xyerrorbars ls 111 pt  6 ps 1.6 lw 4 title '',\
file8 using 1:3:2:4 with xyerrorbars ls 111 pt  6 ps 1.6 lw 4 title '',\
file8 using 5:7:6:8 with xyerrorbars ls 111 pt  6 ps 1.6 lw 4 title '',\
file8 using 9:11:10:12 with xyerrorbars ls 111 pt  6 ps 1.6 lw 4 title '',\
file9 using 1:3:2:4 with xyerrorbars ls 111 pt  6 ps 1.6 lw 4 title '',\
file9 using 5:7:6:8 with xyerrorbars ls 111 pt  6 ps 1.6 lw 4 title '',\
file9 using 9:11:10:12 with xyerrorbars ls 111 pt  6 ps 1.6 lw 4 title '',\
file10 using 1:3:2:4 with xyerrorbars ls 111 pt  6 ps 1.6 lw 4 title '',\
file10 using 5:7:6:8 with xyerrorbars ls 111 pt  6 ps 1.6 lw 4 title '',\
file10 using 9:11:10:12 with xyerrorbars ls 111 pt  6 ps 1.6 lw 4 title '',\
file11 using 1:3:2:4 with xyerrorbars ls 111 pt  6 ps 1.6 lw 4 title '',\
file11 using 5:7:6:8 with xyerrorbars ls 111 pt  6 ps 1.6 lw 4 title '',\
file11 using 9:11:10:12 with xyerrorbars ls 111 pt  6 ps 1.6 lw 4 title '',\
file12 using 1:2:6:4 with xyerrorbars ls 111 pt  6 ps 1.6 lw 4 title '',\
file13 using 1:2:6:4 with xyerrorbars ls 111 pt  6 ps 1.6 lw 4 title '',\
al_02 using 3:5:4:6 with xyerrorbars ls 101 pt 2 ps 1.6 lw 4 title '',\
al_05 using 3:5:4:6 with xyerrorbars ls 101 pt 6 ps 1.6 lw 4 title '',\
al_07 using 3:5:4:6 with xyerrorbars ls 101 pt 4 ps 1.6 lw 4 title '',\
al_10 using 3:5:4:6 with xyerrorbars ls 101 pt 8 ps 1.6 lw 4 title '',\
al_13 using 3:5:4:6 with xyerrorbars ls 101 pt 10 ps 1.6 lw 4 title '',\
alumina_02 using 3:5:4:6 with xyerrorbars ls 102 pt 2 ps 1.6 lw 4 title '',\
alumina_05 using 3:5:4:6 with xyerrorbars ls 102 pt 6 ps 1.6 lw 4 title '',\
alumina_07 using 3:5:4:6 with xyerrorbars ls 102 pt 4 ps 1.6 lw 4 title '',\
alumina_10 using 3:5:4:6 with xyerrorbars ls 102 pt 8 ps 1.6 lw 4 title '',\
alumina_13 using 3:5:4:6 with xyerrorbars ls 102 pt 10 ps 1.6 lw 4 title '',\
alumina_15 using 3:5:4:6 with xyerrorbars ls 102 pt 12 ps 1.6 lw 4 title '',\
stainless_02 using 3:5:4:6 with xyerrorbars ls 103 pt 2 ps 1.6 lw 4 title '',\
stainless_05 using 3:5:4:6 with xyerrorbars ls 103 pt 6 ps 1.6 lw 4 title '',\
stainless_07 using 3:5:4:6 with xyerrorbars ls 103 pt 4 ps 1.6 lw 4 title '',\
stainless_10 using 3:5:4:6 with xyerrorbars ls 103 pt 8 ps 1.6 lw 4 title '',\
stainless_13 using 3:5:4:6 with xyerrorbars ls 103 pt 10 ps 1.6 lw 4 title '',\
stainless_15 using 3:5:4:6 with xyerrorbars ls 103 pt 12 ps 1.6 lw 4 title '',\
brass_02 using 3:5:4:6 with xyerrorbars ls 104 pt 2 ps 1.6 lw 4 title '',\
brass_05 using 3:5:4:6 with xyerrorbars ls 104 pt 6 ps 1.6 lw 4 title '',\
brass_07 using 3:5:4:6 with xyerrorbars ls 104 pt 4 ps 1.6 lw 4 title '',\
brass_10 using 3:5:4:6 with xyerrorbars ls 104 pt 8 ps 1.6 lw 4 title '',\
brass_13 using 3:5:4:6 with xyerrorbars ls 104 pt 10 ps 1.6 lw 4 title '',\
brass_15 using 3:5:4:6 with xyerrorbars ls 104 pt 12 ps 1.6 lw 4 title '',\
d8 using 3:5:4:6 with xyerrorbars ls 301 pt 14 ps 1.6 lw 4 title '',\
d10 using 3:5:4:6 with xyerrorbars ls 302 pt 14 ps 1.6 lw 4 title '',\
d11 using 3:5:4:6 with xyerrorbars ls 302 pt 14 ps 1.6 lw 4 title '',\
d12 using 3:5:4:6 with xyerrorbars ls 304 pt  14 ps 1.6 lw 4 title '',\
d13 using 3:5:4:6 with xyerrorbars ls 305 pt 14 ps 1.6 lw 4 title '',\
d14 using 3:5:4:6 with xyerrorbars ls 306 pt 14 ps 1.6 lw 4 title '',\
d15 using 3:5:4:6 with xyerrorbars ls 307 pt 14 ps 1.6 lw 4 title '',\
d20 using 3:5:4:6 with xyerrorbars ls 308 pt 14 ps 1.6 lw 4 title '',\
d5_05 using 3:7:4:8 with xyerrorbars ls 301 pt 6 ps 1.6 lw 4 title '',\
d10_05 using 3:7:4:8 with xyerrorbars ls 302 pt 6 ps 1.6 lw 4 title '',\
d15_05 using 3:7:4:8 with xyerrorbars ls 307 pt 6 ps 1.6 lw 4 title '',\
d20_05 using 3:7:4:8 with xyerrorbars ls 308 pt 6 ps 1.6 lw 4 title '',\
d5_02 using 3:5:4:6 with xyerrorbars ls 301 pt 2 ps 1.6 lw 4 title '',\
d10_02 using 3:5:4:6 with xyerrorbars ls 302 pt 2 ps 1.6 lw 4 title '',\
d10_13 using 3:5:4:6 with xyerrorbars ls 302 pt 10 ps 1.6 lw 4 title '',\
d15_13 using 3:5:4:6 with xyerrorbars ls 307 pt 10 ps 1.6 lw 4 title '',\
d20_13 using 3:5:4:6 with xyerrorbars ls 308 pt 10 ps 1.6 lw 4 title '',\

unset multiplot
reset