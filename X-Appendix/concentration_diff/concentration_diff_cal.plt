set terminal epslatex standalone header \
" \
\\usepackage{amssymb, amsmath, bm}\n\
\\usepackage{siunitx}\n \
"
set terminal epslatex size 4, 3.15 standalone color solid 9
 
set encoding utf8
set datafile separator ','

set tics front 
set border front
set border lw 3
set size ratio 1
  
if (!exists("fname")) fname='test'

oname = sprintf("%s.tex", fname)
set output oname

con095 = sprintf('./graphdata/0.95.csv')
con100 = sprintf('./graphdata/1.00.csv')
con105 = sprintf('./graphdata/1.05.csv')

file1= sprintf('../../5-Results/viscosity/iwamuro/PAA0.5wt_VelocityVSViscosityperthickness_39kHz.csv')
file2= sprintf('../../5-Results/viscosity/iwamuro/PAA0.5wt_VelocityVSViscosityperthickness_72kHz.csv')
file3= sprintf('../../5-Results/viscosity/iwamuro/PAA0.5wt_VelocityVSViscosityperthickness_147kHz.csv')
file4= sprintf('../../5-Results/viscosity/iwamuro/PAA0.5wt_VelocityVSViscosityperthickness_23kHz.csv')

file5= sprintf('../../5-Results/viscosity/iwamuro/CMC1.0wt_VelocityVSViscosityperthickness_39kHz.csv')
file6= sprintf('../../5-Results/viscosity/iwamuro/CMC1.0wt_VelocityVSViscosityperthickness_72kHz.csv')
file7= sprintf('../../5-Results/viscosity/iwamuro/CMC1.0wt_VelocityVSViscosityperthickness_147kHz.csv')
file8= sprintf('../../5-Results/viscosity/iwamuro/CMC1.0wt_VelocityVSViscosityperthickness_23kHz.csv')

file9= sprintf('../../5-Results/viscosity/iwamuro/VelocityVSViscosityperthickness_39kHz.csv')
file10= sprintf('../../5-Results/viscosity/iwamuro/VelocityVSViscosityperthickness_72kHz.csv')
file11= sprintf('../../5-Results/viscosity/iwamuro/VelocityVSViscosityperthickness_147kHz.csv')

file12= sprintf('../../5-Results/viscosity/iwamuro/iwamuro_PAA1_100.csv')
file13= sprintf('../../5-Results/viscosity/iwamuro/iwamuro_PAA1_180.csv')

d8 = sprintf('../../5-Results/diameter/data/8.csv')
d10 = sprintf('../../5-Results/diameter/data/10.csv')
d11 = sprintf('../../5-Results/diameter/data/11.csv')
d12 = sprintf('../../5-Results/diameter/data/12.csv')
d13 = sprintf('../../5-Results/diameter/data/13.csv')
d14 = sprintf('../../5-Results/diameter/data/14.csv')
d15 = sprintf('../../5-Results/diameter/data/15.csv')
d20 = sprintf('../../5-Results/diameter/data/20.csv')

d5_05 = sprintf('../../5-Results/diameter-0.5/data/5.csv')
d10_05 = sprintf('../../5-Results/diameter-0.5/data/10.csv')
d15_05 = sprintf('../../5-Results/diameter-0.5/data/15.csv')
d20_05 = sprintf('../../5-Results/diameter-0.5/data/20.csv')

d5_02 = sprintf('../../5-Results/diameter-0.2-1.3/data/0.2-5.csv')
d8_02 = sprintf('../../5-Results/diameter-0.2-1.3/data/0.2-8.csv')
d10_02 = sprintf('../../5-Results/diameter-0.2-1.3/data/0.2-10.csv')

d8_13 = sprintf('../../5-Results/diameter-0.2-1.3/data/1.3-8.csv')
d10_13 = sprintf('../../5-Results/diameter-0.2-1.3/data/1.3-10.csv')
d15_13 = sprintf('../../5-Results/diameter-0.2-1.3/data/1.3-15.csv')
d20_13 = sprintf('../../5-Results/diameter-0.2-1.3/data/1.3-20.csv')

al_02 = sprintf('../../5-Results/viscosity/data/al/0.2.csv')
al_05 = sprintf('../../5-Results/viscosity/data/al/0.5.csv')
al_07 = sprintf('../../5-Results/viscosity/data/al/0.7.csv')
al_10 = sprintf('../../5-Results/viscosity/data/al/1.0.csv')
al_13 = sprintf('../../5-Results/viscosity/data/al/1.3.csv')

alumina_02 = sprintf('../../5-Results/viscosity/data/alumina/0.2.csv')
alumina_05 = sprintf('../../5-Results/viscosity/data/alumina/0.5.csv')
alumina_07 = sprintf('../../5-Results/viscosity/data/alumina/0.7.csv')
alumina_10 = sprintf('../../5-Results/viscosity/data/alumina/1.0.csv')
alumina_13 = sprintf('../../5-Results/viscosity/data/alumina/1.3.csv')
alumina_15 = sprintf('../../5-Results/viscosity/data/alumina/1.5.csv')

stainless_02 = sprintf('../../5-Results/viscosity/data/stainless/0.2.csv')
stainless_05 = sprintf('../../5-Results/viscosity/data/stainless/0.5.csv')
stainless_07 = sprintf('../../5-Results/viscosity/data/stainless/0.7.csv')
stainless_10 = sprintf('../../5-Results/viscosity/data/stainless/1.0.csv')
stainless_13 = sprintf('../../5-Results/viscosity/data/stainless/1.3.csv')
stainless_15 = sprintf('../../5-Results/viscosity/data/stainless/1.5.csv')

brass_02 = sprintf('../../5-Results/viscosity/data/brass/0.2.csv')
brass_05 = sprintf('../../5-Results/viscosity/data/brass/0.5.csv')
brass_07 = sprintf('../../5-Results/viscosity/data/brass/0.7.csv')
brass_10 = sprintf('../../5-Results/viscosity/data/brass/1.0.csv')
brass_13 = sprintf('../../5-Results/viscosity/data/brass/1.3.csv')
brass_15 = sprintf('../../5-Results/viscosity/data/brass/1.5.csv')

lx = 40.0
ly = 200.0
 
set multiplot
 
 
set style line 101 lt 1 lw 2 ps 2 lc rgb '#d62728' # red
set style line 102 lt 1 lw 2 ps 2 lc rgb '#1f77b4' # blue
set style line 103 lt 1 lw 2 ps 2 lc rgb '#2ca02c' # green
set style line 104 lt 1 lw 2 ps 2 lc rgb '#ff7f0e' # orange
set style line 105 lt 1 lw 2 ps 2 lc rgb '#17becf' # light-blue
set style line 106 lt 1 lw 2 ps 2 lc rgb '#9467bd' # purple
set style line 107 lt 1 lw 2 ps 2 lc rgb '#bcbd22' # yellow
set style line 108 lt 1 lw 2 ps 2 lc rgb '#e377c2' # orchid
set style line 109 lt 1 lw 2 ps 2 lc rgb '#7f7f7f' # gray
set style line 110 lt 1 lw 2 ps 2 lc rgb '#8c564b' # brown
 
set style line 111 lt 1 lw 2 ps 2 lc rgb '#ff9896' # red
set style line 112 lt 1 lw 2 ps 2 lc rgb '#aec7e8' # blue
set style line 113 lt 1 lw 2 ps 2 lc rgb '#98df8a' # green
set style line 114 lt 1 lw 2 ps 2 lc rgb '#ffbb78' # orange
set style line 115 lt 1 lw 2 ps 2 lc rgb '#9edae5' # light-blue
set style line 116 lt 1 lw 2 ps 2 lc rgb '#c5b0d5' # purple
set style line 117 lt 1 lw 2 ps 2 lc rgb '#dbdb8d' # yellow
set style line 118 lt 1 lw 2 ps 2 lc rgb '#f7b6d2' # orchid
set style line 119 lt 1 lw 2 ps 2 lc rgb '#c7c7c7' # gray
set style line 120 lt 1 lw 2 ps 2 lc rgb '#c49c94' # brown

set style line 301 lt 1 lw 2 ps 2 lc rgb '#d894ff'
set style line 302 lt 1 lw 2 ps 2 lc rgb '#cb70ff'
set style line 303 lt 1 lw 2 ps 2 lc rgb '#be4dff'
set style line 304 lt 1 lw 2 ps 2 lc rgb '#b029ff'
set style line 305 lt 1 lw 2 ps 2 lc rgb '#a305ff'
set style line 306 lt 1 lw 2 ps 2 lc rgb '#8e00e0'
set style line 307 lt 1 lw 2 ps 2 lc rgb '#7800bd'
set style line 308 lt 1 lw 2 ps 2 lc rgb '#610099'

set label 1 at screen 0.65,0.265 point ls 101 pt 3 ps 2.5 lw 4
set label 2 at screen 0.65,0.215 point ls 102 pt 3 ps 2.5 lw 4
set label 3 at screen 0.65,0.165 point ls 103 pt 3 ps 2.5 lw 4
set label 4 at screen 0.65,0.115 point ls 111 pt 6 ps 2.5 lw 4

set label 11 at screen 0.75,0.265 '{\Large 0.95wt.\%}' front
set label 12 at screen 0.75,0.215 '{\Large 1.00wt.\%}' front
set label 13 at screen 0.75,0.165 '{\Large 1.05wt.\%}' front
set label 14 at screen 0.795,0.115 '{\Large Different cases}' front

set object 20 rect from screen 0.6,0.08 to screen 0.95,0.3 fc rgb '#FFFFFFFF' lw 2 back

set palette defined (0 '#999999',\
                     1 '#00008b',\
					 2 '#2ca9e1',\
					 3 '#008000',\
					 4 '#c8c800',\
					 5 '#ff0000',\
					 6 '#1a1a1a') positive
 
set format '$%g$'

set size ratio 0.8
set style fill solid 10
 
####################################################################################################
 
set lmargin screen 0.05
set rmargin screen 0.45
 
set tmargin screen 0.97
set bmargin screen 0.54
 
####################################################################################################
 
set key width 0.5 box opaque spacing 1.1 samplen 1 Left reverse
set key right bottom
unset key
 
####################################################################################################

set label 31 at graph 0.01,0.93 '(a)' front

set xlabel '{\footnotesize PAA concentration[wt.\%]}' offset 0,0.7
set format x '$%g$'
set xrange [0.925:1.075]
set xtics 0.05
set mxtics 2

set ylabel '{\Large $U_\text{off}\displaystyle [$\SI{}{mm/s}$]$}' offset 0.5,0
set format y '$%g$'
set yrange [100:200]
set ytics 50 offset 0,0
set mytics 2
 
plot \
con095 using 1:($6)*1000:($7)*1000 with yerrorlines ls 101 pt 3 ps 1.5 lw 3 title '',\
con100 using 1:($6)*1000:($7)*1000 with yerrorlines ls 102 pt 3 ps 1.5 lw 3 title '',\
con105 using 1:($6)*1000:($7)*1000 with yerrorlines ls 103 pt 3 ps 1.5 lw 3 title ''

set label 31 at graph 0.01,0.93 '(b)' front

set lmargin screen 0.58
set rmargin screen 0.98
 
set tmargin screen 0.97
set bmargin screen 0.54

set yrange [0.95:1.4]
set ytics 0.2 offset 0,0

set ylabel '{\Large $U_\text{on}/U_\text{off}\displaystyle [$\SI{}{-}$]$}' offset 1,0

plot \
con095 using 1:($4):($5) with yerrorlines ls 101 pt 3 ps 1.5 lw 3 title '',\
con100 using 1:($4):($5) with yerrorlines ls 102 pt 3 ps 1.5 lw 3 title '',\
con105 using 1:($4):($5) with yerrorlines ls 103 pt 3 ps 1.5 lw 3 title ''

set label 31 at graph 0.01,0.93 '(c)' front


set lmargin screen 0.05
set rmargin screen 0.45
 
set tmargin screen 0.47
set bmargin screen 0.03
set logscale x

set format x '$%g$'
set xlabel '{\Large $\displaystyle \frac{\mu_\text{U}}{\mu_\text{ABL}}\cdot \frac{\delta}{a}$ [$\SI{}{-}$]}' offset 0,-0.5
set xrange [0.005:10]
set xtics 10
set mxtics 5
 
set ylabel '{\Large $\displaystyle U_\text{on}/U_\text{off}[$\SI{}{-}$]$}' offset 1,0
set format y '$%g$'
set yrange [0.9:1.5]
set ytics 0.2 offset 0,0
set mytics 2


plot \
file1 using 1:3:2:4 with xyerrorbars ls 111 pt  6 ps 1.6 lw 2 title 'Iwamuro(2020)',\
file1 using 5:7:6:8 with xyerrorbars ls 111 pt  6 ps 1.6 lw 2 title '',\
file1 using 9:11:10:12 with xyerrorbars ls 111 pt  6 ps 1.6 lw 2 title '',\
file2 using 1:3:2:4 with xyerrorbars ls 111 pt  6 ps 1.6 lw 2 title '',\
file2 using 5:7:6:8 with xyerrorbars ls 111 pt  6 ps 1.6 lw 2 title '',\
file2 using 9:11:10:12 with xyerrorbars ls 111 pt  6 ps 1.6 lw 2 title '',\
file3 using 1:3:2:4 with xyerrorbars ls 111 pt  6 ps 1.6 lw 2 title '',\
file3 using 5:7:6:8 with xyerrorbars ls 111 pt  6 ps 1.6 lw 2 title '',\
file3 using 9:11:10:12 with xyerrorbars ls 111 pt  6 ps 1.6 lw 2 title '',\
file4 using 1:3:2:4 with xyerrorbars ls 111 pt  6 ps 1.6 lw 2 title '',\
file4 using 5:7:6:8 with xyerrorbars ls 111 pt  6 ps 1.6 lw 2 title '',\
file4 using 9:11:10:12 with xyerrorbars ls 111 pt  6 ps 1.6 lw 2 title '',\
file5 using 1:3:2:4 with xyerrorbars ls 111 pt  6 ps 1.6 lw 2 title '',\
file5 using 5:7:6:8 with xyerrorbars ls 111 pt  6 ps 1.6 lw 2 title '',\
file5 using 9:11:10:12 with xyerrorbars ls 111 pt  6 ps 1.6 lw 2 title '',\
file6 using 1:3:2:4 with xyerrorbars ls 111 pt  6 ps 1.6 lw 2 title '',\
file6 using 5:7:6:8 with xyerrorbars ls 111 pt  6 ps 1.6 lw 2 title '',\
file6 using 9:11:10:12 with xyerrorbars ls 111 pt  6 ps 1.6 lw 2 title '',\
file7 using 1:3:2:4 with xyerrorbars ls 111 pt  6 ps 1.6 lw 2 title '',\
file7 using 5:7:6:8 with xyerrorbars ls 111 pt  6 ps 1.6 lw 2 title '',\
file7 using 9:11:10:12 with xyerrorbars ls 111 pt  6 ps 1.6 lw 2 title '',\
file8 using 1:3:2:4 with xyerrorbars ls 111 pt  6 ps 1.6 lw 2 title '',\
file8 using 5:7:6:8 with xyerrorbars ls 111 pt  6 ps 1.6 lw 2 title '',\
file8 using 9:11:10:12 with xyerrorbars ls 111 pt  6 ps 1.6 lw 2 title '',\
file9 using 1:3:2:4 with xyerrorbars ls 111 pt  6 ps 1.6 lw 2 title '',\
file9 using 5:7:6:8 with xyerrorbars ls 111 pt  6 ps 1.6 lw 2 title '',\
file9 using 9:11:10:12 with xyerrorbars ls 111 pt  6 ps 1.6 lw 2 title '',\
file10 using 1:3:2:4 with xyerrorbars ls 111 pt  6 ps 1.6 lw 2 title '',\
file10 using 5:7:6:8 with xyerrorbars ls 111 pt  6 ps 1.6 lw 2 title '',\
file10 using 9:11:10:12 with xyerrorbars ls 111 pt  6 ps 1.6 lw 2 title '',\
file11 using 1:3:2:4 with xyerrorbars ls 111 pt  6 ps 1.6 lw 2 title '',\
file11 using 5:7:6:8 with xyerrorbars ls 111 pt  6 ps 1.6 lw 2 title '',\
file11 using 9:11:10:12 with xyerrorbars ls 111 pt  6 ps 1.6 lw 2 title '',\
file12 using 1:2:6:4 with xyerrorbars ls 111 pt  6 ps 1.6 lw 2 title '',\
file13 using 1:2:6:4 with xyerrorbars ls 111 pt  6 ps 1.6 lw 2 title '',\
al_02 using 3:5:4:6 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
al_05 using 3:5:4:6 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
al_07 using 3:5:4:6 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
al_10 using 3:5:4:6 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
al_13 using 3:5:4:6 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
alumina_02 using 3:5:4:6 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
alumina_05 using 3:5:4:6 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
alumina_07 using 3:5:4:6 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
alumina_10 using 3:5:4:6 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
alumina_13 using 3:5:4:6 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
alumina_15 using 3:5:4:6 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
stainless_02 using 3:5:4:6 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
stainless_05 using 3:5:4:6 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
stainless_07 using 3:5:4:6 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
stainless_10 using 3:5:4:6 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
stainless_13 using 3:5:4:6 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
stainless_15 using 3:5:4:6 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
brass_02 using 3:5:4:6 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
brass_05 using 3:5:4:6 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
brass_07 using 3:5:4:6 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
brass_10 using 3:5:4:6 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
brass_13 using 3:5:4:6 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
brass_15 using 3:5:4:6 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
d8 using 3:5:4:6 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
d10 using 3:5:4:6 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
d11 using 3:5:4:6 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
d12 using 3:5:4:6 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
d13 using 3:5:4:6 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
d14 using 3:5:4:6 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
d15 using 3:5:4:6 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
d20 using 3:5:4:6 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
d5_05 using 3:7:4:8 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
d10_05 using 3:7:4:8 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
d15_05 using 3:7:4:8 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
d20_05 using 3:7:4:8 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
d5_02 using 3:5:4:6 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
d8_02 using 3:5:4:6 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
d10_02 using 3:5:4:6 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
d8_13 using 3:5:4:6 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
d10_13 using 3:5:4:6 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
d15_13 using 3:5:4:6 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
d20_13 using 3:5:4:6 with xyerrorbars ls 111 pt 6 ps 1.6 lw 2 title '',\
con095 using 2:4:3:5 with xyerrorbars ls 101 pt 2 ps 2 lw 3.5 title '',\
con100 using 2:4:3:5 with xyerrorbars ls 102 pt 2 ps 2 lw 3.5 title '',\
con105 using 2:4:3:5 with xyerrorbars ls 103 pt 2 ps 2 lw 3.5 title '',\


unset multiplot
reset