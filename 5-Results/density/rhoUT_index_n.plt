set terminal epslatex standalone header \
" \
\\usepackage{amssymb, amsmath, bm}\n\
\\usepackage{siunitx}\n \
"
set terminal epslatex size 4.8, 4.5 standalone color solid 9
 
set encoding utf8
set datafile separator ','

set tics front 
set border front
set border lw 3 
set size ratio 1
  
if (!exists("fname")) fname='test'

oname = sprintf("%s.tex", fname)
set output oname

al_02 = sprintf('./data/0.2-al.csv')
alumina_02 = sprintf('./data/0.2-alumina.csv')
stainless_02 = sprintf('./data/0.2-stainless.csv')
brass_02 = sprintf('./data/0.2-brass.csv')

al_05 = sprintf('./data/0.5-al.csv')
alumina_05 = sprintf('./data/0.5-alumina.csv')
stainless_05 = sprintf('./data/0.5-stainless.csv')
brass_05 = sprintf('./data/0.5-brass.csv')

al_07 = sprintf('./data/0.7-al.csv')
alumina_07 = sprintf('./data/0.7-alumina.csv')
stainless_07 = sprintf('./data/0.7-stainless.csv')
brass_07 = sprintf('./data/0.7-brass.csv')

al_10 = sprintf('./data/1.0-al.csv')
alumina_10 = sprintf('./data/1.0-alumina.csv')
stainless_10 = sprintf('./data/1.0-fe.csv')
brass_10 = sprintf('./data/1.0-brass.csv')

al_13 = sprintf('./data/1.3-al.csv')
alumina_13 = sprintf('./data/1.3-alumina.csv')
stainless_13 = sprintf('./data/1.3-stainless.csv')
brass_13 = sprintf('./data/1.3-brass.csv')

alumina_15 = sprintf('./data/1.5-alumina.csv')
stainless_15 = sprintf('./data/1.5-stainless.csv')
brass_15 = sprintf('./data/1.5-brass.csv')

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

set palette defined (0 '#999999',\
                     1 '#00008b',\
					 2 '#2ca9e1',\
					 3 '#008000',\
					 4 '#c8c800',\
					 5 '#ff0000',\
					 6 '#1a1a1a') positive
 
set format '$%g$'

set size ratio 1.3
set style fill solid 10

f(x)=a*x

####################################################################################################
 
set lmargin screen 0.0
set rmargin screen 0.3

set tmargin screen 0.73
set bmargin screen 0.40
 
####################################################################################################
 
set key width -7 box opaque spacing 1.2 samplen 1 Left reverse invert
set key at screen 0.93,0.95
 
####################################################################################################

set label 31 at graph 0.02,0.94 '(a)\,{\footnotesize$A=2.2\times10^{-5}$}' front

set format x '{\small$%.1l\times10^{%L}$}'
set xlabel '' offset 0,0.4
set xrange [0:0.7E8]
set xtics 0.35E8  offset 0,0.32
set mxtics 2
 
set ylabel '{\Large $ U_\text{off} \displaystyle [$\SI{}{mm/s}$]$}' offset 0.5,0
set format y '$%g$'
set yrange [0:1400]
set ytics 400 offset 0.5,0
set mytics 2

a=2.22086547E-5
 
plot \
f(x) with lines ls 116 lw 4 title 'Approx. $U_\text{off}=A \left(\Delta\rho\right)^{\frac{1}{n}}$',\
brass_02 using 8:($4)*1000:($5)*1000 with yerrorlines ls 104 pt 2 ps 1.5 lw 3 title 'brass',\
stainless_02 using 8:($4)*1000:($5)*1000 with yerrorlines ls 103 pt 2 ps 1.5 lw 3 title 'stainless',\
alumina_02 using 8:($4)*1000:($5)*1000 with yerrorlines ls 102 pt 2 ps 1.5 lw 3 title 'alumina',\
al_02 using 8:($4)*1000:($5)*1000 with yerrorlines ls 101 pt 2 ps 1.5 lw 3 title 'aluminum'

####################################################################################################

set lmargin screen 0.35
set rmargin screen 0.65

unset key
 
####################################################################################################

set label 31 at graph 0.02,0.94 '(b)\,{\footnotesize$A=3.0\times10^{-11}$}' front

set xlabel '' offset 0,0.4
set xrange [0:1E13]
set xtics 0.5E13
 
set ylabel '' offset 0.5,0
set yrange [0:300]
set ytics 100 offset 0.5,0
set mytics 2

a=3.01158058E-11

plot \
f(x) with lines ls 116 lw 4 title '',\
al_05 using 8:($4)*1000:($5)*1000 with yerrorlines ls 101 pt 2 ps 1.5 lw 3 title 'aluminum',\
alumina_05 using 8:($4)*1000:($5)*1000 with yerrorlines ls 102 pt 2 ps 1.5 lw 3 title 'alumina',\
stainless_05 using 8:($4)*1000:($5)*1000 with yerrorlines ls 103 pt 2 ps 1.5 lw 3 title 'stainless',\
brass_05 using 8:($4)*1000:($5)*1000 with yerrorlines ls 104 pt 2 ps 1.5 lw 3 title 'brass'

####################################################################################################

set lmargin screen 0.7
set rmargin screen 1
 
####################################################################################################

set label 31 at graph 0.02,0.94 '(c)\,{\footnotesize$A=5.4\times10^{-12}$}' front

set xlabel '' offset 0,0.4
set xrange [0:0.5E14]
set xtics 0.25E14

set ylabel '' offset 0.5,0
set mytics 2

a=5.35630378E-12

plot \
f(x) with lines ls 116 lw 4 title '',\
al_07 using 8:($4)*1000:($5)*1000 with yerrorlines ls 101 pt 2 ps 1.5 lw 3 title 'aluminum',\
alumina_07 using 8:($4)*1000:($5)*1000 with yerrorlines ls 102 pt 2 ps 1.5 lw 3 title 'alumina',\
stainless_07 using 8:($4)*1000:($5)*1000 with yerrorlines ls 103 pt 2 ps 1.5 lw 3 title 'stainless',\
brass_07 using 8:($4)*1000:($5)*1000 with yerrorlines ls 104 pt 2 ps 1.5 lw 3 title 'brass'

####################################################################################################
 
set lmargin screen 0.0
set rmargin screen 0.3

set tmargin screen 0.33
set bmargin screen 0

####################################################################################################

set label 31 at graph 0.02,0.94 '(d)\,{\footnotesize$A=2.0\times10^{-12}$}' front

set xlabel '{\Large $\left(\Delta\rho\right)^{\frac{1}{n}}$ [$($kg/m$^3)^{\frac{1}{n}}$]}' offset 0,0.4
set xrange [0:0.8E14]
set xtics 0.4E14
 
set ylabel '{\Large $ U_\text{off} \displaystyle [$\SI{}{mm/s}$]$}' offset 0.5,0
set format y '$%g$'
set yrange [0:150]
set ytics 50 offset 0.5,0
set mytics 2

a=2.02202510E-12
 
plot \
f(x) with lines ls 116 lw 4 title '',\
al_10 using 8:($4)*1000:($5)*1000 with yerrorlines ls 101 pt 2 ps 1.5 lw 3 title 'aluminum',\
alumina_10 using 8:($4)*1000:($5)*1000 with yerrorlines ls 102 pt 2 ps 1.5 lw 3 title 'alumina',\
stainless_10 using 8:($4)*1000:($5)*1000 with yerrorlines ls 103 pt 2 ps 1.5 lw 3 title 'stainless',\
brass_10 using 8:($4)*1000:($5)*1000 with yerrorlines ls 104 pt 2 ps 1.5 lw 3 title 'brass'

####################################################################################################
 
set lmargin screen 0.35
set rmargin screen 0.65
 
####################################################################################################

set label 31 at graph 0.02,0.94 '(e)\,{\footnotesize$A=8.2\times10^{-13}$}' front

set xrange [0:1.6E14]
set xtics 0.8E14

set yrange [0:120]
set ylabel '' offset 0.5,0
set ytics 40 offset 0.5,0

a=8.19770791E-13

plot \
f(x) with lines ls 116 lw 4 title '',\
al_13 using 8:($4)*1000:($5)*1000 with yerrorlines ls 101 pt 2 ps 1.5 lw 3 title 'aluminum',\
alumina_13 using 8:($4)*1000:($5)*1000 with yerrorlines ls 102 pt 2 ps 1.5 lw 3 title 'alumina',\
stainless_13 using 8:($4)*1000:($5)*1000 with yerrorlines ls 103 pt 2 ps 1.5 lw 3 title 'stainless',\
brass_13 using 8:($4)*1000:($5)*1000 with yerrorlines ls 104 pt 2 ps 1.5 lw 3 title 'brass'

####################################################################################################
 
set lmargin screen 0.7
set rmargin screen 1
 
####################################################################################################
 
set key width 0.5 box opaque spacing 1.1 samplen 1 Left reverse
set key at screen 0.75,0.15
unset key
 
####################################################################################################

set label 31 at graph 0.02,0.94 '(f)\,{\footnotesize$A=2.3\times10^{-13}$}' front

set xrange [0:5E14]
set xtics 2.5E14

set yrange [0:120]
set ylabel '' offset 0.5,0
set ytics 40 offset 0.5,0

a=2.27659408E-13

plot \
f(x) with lines ls 116 lw 4 title '',\
alumina_15 using 8:($4)*1000:($5)*1000 with yerrorlines ls 102 pt 2 ps 1.5 lw 3 title 'alumina',\
stainless_15 using 8:($4)*1000:($5)*1000 with yerrorlines ls 103 pt 2 ps 1.5 lw 3 title 'stainless',\
brass_15 using 8:($4)*1000:($5)*1000 with yerrorlines ls 104 pt 2 ps 1.5 lw 3 title 'brass'

unset multiplot
reset