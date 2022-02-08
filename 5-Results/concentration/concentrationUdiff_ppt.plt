set terminal epslatex standalone header \
" \
\\usepackage{amssymb, amsmath, bm}\n\
\\usepackage{siunitx}\n \
"
set terminal epslatex size 3, 4.3 standalone color solid 9
 
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

set size ratio 1.5
set style fill solid 10
 
####################################################################################################

set lmargin screen 0
set rmargin screen 0.49

set tmargin screen 1
set bmargin screen 0.505
 
####################################################################################################
 
set key width 0 spacing 1.1 samplen 1 Left reverse
set key at screen 0.195,1
 
####################################################################################################

set xlabel '' offset 0,0.4
set format x ''
set xrange [0:1.6]
set xtics 0.2,0.4,1.5
set mxtics 2
 
set ylabel '{\Large $ U_\text{on}/U_\text{off} \displaystyle [$\SI{}{-}$]$}' offset 0.5,0
set format y '$%.1f$'
set yrange [0.9:1.5]
set ytics 1.0,0.1,1.6
set mytics 2

set label 31 at graph 0.02,0.93 '(a) Aluminum' front
 
plot \
al_02 using 8:6:7 with yerrorlines ls 101 pt 2 ps 1.5 lw 3 title '',\
al_05 using 8:6:7 with yerrorlines ls 101 pt 2 ps 1.5 lw 3 title '',\
al_07 using 8:6:7 with yerrorlines ls 101 pt 2 ps 1.5 lw 3 title '',\
al_10 using 8:6:7 with yerrorlines ls 101 pt 2 ps 1.5 lw 3 title '',\
al_13 using 8:6:7 with yerrorlines ls 101 pt 2 ps 1.5 lw 3 title '',\

set lmargin screen 0.51
set rmargin screen 1

set key at screen 0.44,1

set label 31 at graph 0.02,0.93 '(b) Alumina' front

set ylabel ''
set format y ''

plot \
alumina_02 using 8:6:7 with yerrorlines ls 102 pt 2 ps 1.5 lw 3 title '',\
alumina_05 using 8:6:7 with yerrorlines ls 102 pt 2 ps 1.5 lw 3 title '',\
alumina_07 using 8:6:7 with yerrorlines ls 102 pt 2 ps 1.5 lw 3 title '',\
alumina_07 using 8:6:7 with yerrorlines ls 102 pt 2 ps 1.5 lw 3 title '',\
alumina_10 using 8:6:7 with yerrorlines ls 102 pt 2 ps 1.5 lw 3 title '',\
alumina_13 using 8:6:7 with yerrorlines ls 102 pt 2 ps 1.5 lw 3 title '',\
alumina_15 using 8:6:7 with yerrorlines ls 102 pt 2 ps 1.5 lw 3 title '',\

set lmargin screen 0
set rmargin screen 0.49

set tmargin screen 0.495
set bmargin screen 0

set key at screen 0.725,1

set label 31 at graph 0.02,0.93 '(c) Stainless' front
set xlabel '{\footnotesize PAA concentration $[$wt.\%\SI{}{}$]$}' offset 0,0.4
set format x '$%2.1f$'
set ylabel '{\Large $ U_\text{on}/U_\text{off} \displaystyle [$\SI{}{-}$]$}' offset 0.5,0
set format y '$%.1f$'

plot \
stainless_02 using 8:6:7 with yerrorlines ls 103 pt 2 ps 1.5 lw 3 title '',\
stainless_05 using 8:6:7 with yerrorlines ls 103 pt 2 ps 1.5 lw 3 title '',\
stainless_07 using 8:6:7 with yerrorlines ls 103 pt 2 ps 1.5 lw 3 title '',\
stainless_07 using 8:6:7 with yerrorlines ls 103 pt 2 ps 1.5 lw 3 title '',\
stainless_10 using 8:6:7 with yerrorlines ls 103 pt 2 ps 1.5 lw 3 title '',\
stainless_13 using 8:6:7 with yerrorlines ls 103 pt 2 ps 1.5 lw 3 title '',\
stainless_15 using 8:6:7 with yerrorlines ls 103 pt 2 ps 1.5 lw 3 title '',\

set lmargin screen 0.51
set rmargin screen 1

set tmargin screen 0.495
set bmargin screen 0

set key at screen 0.95,1

set label 31 at graph 0.02,0.93 '(d) Brass' front
set xlabel '{\footnotesize PAA concentration $[$wt.\%\SI{}{}$]$}' offset 0,0.4

set ylabel ''
set format y ''

plot \
brass_02 using 8:6:7 with yerrorlines ls 104 pt 2 ps 1.5 lw 3 title '',\
brass_05 using 8:6:7 with yerrorlines ls 104 pt 2 ps 1.5 lw 3 title '',\
brass_07 using 8:6:7 with yerrorlines ls 104 pt 2 ps 1.5 lw 3 title '',\
brass_07 using 8:6:7 with yerrorlines ls 104 pt 2 ps 1.5 lw 3 title '',\
brass_10 using 8:6:7 with yerrorlines ls 104 pt 2 ps 1.5 lw 3 title '',\
brass_13 using 8:6:7 with yerrorlines ls 104 pt 2 ps 1.5 lw 3 title '',\
brass_15 using 8:6:7 with yerrorlines ls 104 pt 2 ps 1.5 lw 3 title ''

set tmargin screen 1
set bmargin screen 0

unset multiplot
reset