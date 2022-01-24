set terminal epslatex standalone header \
" \
\\usepackage{amssymb, amsmath, bm}\n\
\\usepackage{siunitx}\n \
"
set terminal epslatex size 5.4, 6.75 standalone color solid 9
 
set encoding utf8
set datafile separator ','

set tics front 
set border front
set border lw 3
set size ratio 1
  
if (!exists("fname")) fname='test'

oname = sprintf("%s.tex", fname)
set output oname

al_05_00 = sprintf('./0.5/al-0.csv')
al_05_27 = sprintf('./0.5/al-27.csv')
alumina_05_00 = sprintf('./0.5/alumina-0.csv')
alumina_05_27 = sprintf('./0.5/alumina-27.csv')
stainless_05_00 = sprintf('./0.5/stainless-0.csv')
stainless_05_27 = sprintf('./0.5/stainless-27.csv')
brass_05_00 = sprintf('./0.5/brass-0.csv')
brass_05_27 = sprintf('./0.5/brass-27.csv')

al_07_00 = sprintf('./0.7/al-0.csv')
al_07_27 = sprintf('./0.7/al-27.csv')
alumina_07_00 = sprintf('./0.7/alumina-0.csv')
alumina_07_27 = sprintf('./0.7/alumina-27.csv')
stainless_07_00 = sprintf('./0.7/stainless-0.csv')
stainless_07_27 = sprintf('./0.7/stainless-27.csv')
brass_07_00 = sprintf('./0.7/brass-0.csv')
brass_07_27 = sprintf('./0.7/brass-27.csv')

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

set label 1 at screen 0.3,0.02 point ls 101 pt 3 ps 3
set label 2 at screen 0.6,0.02 point ls 102 pt 3 ps 3

set label 11 at screen 0.40,0.02 '{\LARGE US off}' front
set label 12 at screen 0.70,0.02 '{\LARGE US on}' front

set object 20 rect from screen 0.25,0 to screen 0.775,0.04 fc rgb '#FFFFFFFF' lw 2 back

set palette defined (0 '#999999',\
                     1 '#00008b',\
					 2 '#2ca9e1',\
					 3 '#008000',\
					 4 '#c8c800',\
					 5 '#ff0000',\
					 6 '#1a1a1a') positive
 
set format '$%g$'

set size ratio 0.6
set style fill solid 10
 
####################################################################################################
 
set lmargin screen 0.05
set rmargin screen 0.45
 
set tmargin screen 0.97
set bmargin screen 0.775
 
####################################################################################################
 
set key width 0.5 box opaque spacing 1.1 samplen 1 Left reverse
set key right bottom
unset key
 
####################################################################################################

set label 31 at graph 0.01,0.93 '(a)' front

set format x '$%g$'
set xlabel '' offset 0,0.4
set xrange [0:5]
set xtics 2.5
set mxtics 2
 
set ylabel '{\Large U $\displaystyle [$\SI{}{mm/s}$]$}' offset 0.5,0
set format y '$%g$'
set yrange [0:200]
set ytics 100 offset 0,0
set mytics 2
 
plot \
al_05_00 using 1:2:3 with yerrorlines ls 101 pt  3 ps 1.5 lw 3 title '',\
al_05_27 using 1:2:3 with yerrorlines ls 102 pt  3 ps 1.5 lw 3 title ''

set label 31 at graph 0.01,0.93 '(b)' front

set lmargin screen 0.58
set rmargin screen 0.98
 
set tmargin screen 0.97
set bmargin screen 0.775

set format x '$%g$'
set xlabel '' offset 0,0.4
set xrange [0:5]
set xtics 2.5
set mxtics 2

set ylabel '' offset -1.0,0
set format y '$%g$'
set yrange [0:120]
set ytics 40 offset 0,0
set mytics 2
 
plot \
alumina_05_00 using 1:2:3 with yerrorlines ls 101 pt  3 ps 1.5 lw 3 title '',\
alumina_05_27 using 1:2:3 with yerrorlines ls 102 pt  3 ps 1.5 lw 3 title ''

set label 31 at graph 0.01,0.93 '(c)' front

set lmargin screen 0.05
set rmargin screen 0.45
 
set tmargin screen 0.745
set bmargin screen 0.55

set format x '$%g$'
set xlabel '' offset 0,0.4
set xrange [0:2]
set xtics 1

set ylabel '{\Large U $\displaystyle [$\SI{}{mm/s}$]$}' offset 0.5,0
set format y '$%g$'
set yrange [0:400]
set ytics 200 offset 0,0

plot \
stainless_05_00 using 1:2:3 with yerrorlines ls 101 pt  3 ps 1.5 lw 3 title '',\
stainless_05_27 using 1:2:3 with yerrorlines ls 102 pt  3 ps 1.5 lw 3 title ''

set label 31 at graph 0.01,0.93 '(d)' front

set lmargin screen 0.58
set rmargin screen 0.98
 
set tmargin screen 0.745
set bmargin screen 0.55

set format x '$%g$'
set xlabel '' offset 0,0.4
set xrange [0:1.6]
set xtics 0.8
 
set ylabel '' offset -1.0,0
set format y '$%g$'
set yrange [0:400]
set ytics 200 offset 0,0

plot \
brass_05_00 using 1:2:3 with yerrorlines ls 101 pt  3 ps 1.5 lw 3 title '',\
brass_05_27 using 1:2:3 with yerrorlines ls 102 pt  3 ps 1.5 lw 3 title ''

set label 31 at graph 0.01,0.93 '(e)' front

set lmargin screen 0.05
set rmargin screen 0.45
 
set tmargin screen 0.52
set bmargin screen 0.325

set format x '$%g$'
set xlabel '' offset 0,0.4
set xrange [0:14]
set xtics 7
set mxtics 2

set ylabel '{\Large U $\displaystyle [$\SI{}{mm/s}$]$}' offset -0.5,0
set format y '$%g$'
set yrange [0:40]
set ytics 20 offset 0,0
set mytics 2
 
plot \
al_07_00 using 1:2:3 with yerrorlines ls 101 pt  3 ps 1.5 lw 3 title '',\
al_07_27 using 1:2:3 with yerrorlines ls 102 pt  3 ps 1.5 lw 3 title ''

set label 31 at graph 0.01,0.93 '(f)' front

set lmargin screen 0.58
set rmargin screen 0.98

set tmargin screen 0.52
set bmargin screen 0.325

set format x '$%g$'
set xlabel '' offset 0,0.4
set xrange [0:8]
set xtics 4

set ylabel '' offset -1.0,0
set format y '$%g$'
set yrange [0:100]
set ytics 50 offset 0,0

plot \
alumina_07_00 using 1:2:3 with yerrorlines ls 101 pt  3 ps 1.5 lw 3 title '',\
alumina_07_27 using 1:2:3 with yerrorlines ls 102 pt  3 ps 1.5 lw 3 title ''

set label 31 at graph 0.01,0.93 '(g)' front

set lmargin screen 0.05
set rmargin screen 0.45
 
set tmargin screen 0.295
set bmargin screen 0.1

set format x '$%g$'
set xlabel '{\Large Time $t$ [$\SI{}{s}$]}' offset 0,0.4
set xrange [0:2.4]
set xtics 1.2
set mxtics 2

set ylabel '{\Large U $\displaystyle [$\SI{}{mm/s}$]$}' offset 0.5,0
set format y '$%g$'
set yrange [0:300]
set ytics 100 offset 0,0
set mytics 2
 
plot \
stainless_07_00 using 1:2:3 with yerrorlines ls 101 pt  3 ps 1.5 lw 3 title '',\
stainless_07_27 using 1:2:3 with yerrorlines ls 102 pt  3 ps 1.5 lw 3 title ''

set label 31 at graph 0.01,0.93 '(h)' front

set lmargin screen 0.58
set rmargin screen 0.98

set tmargin screen 0.295
set bmargin screen 0.1

set format x '$%g$'
set xlabel '{\Large Time $t$ [$\SI{}{s}$]}' offset 0,0.4
set xrange [0:2]
set xtics 1

set ylabel '' offset -1.0,0
set format y '$%g$'
set yrange [0:360]
set ytics 120 offset 0,0

plot \
brass_07_00 using 1:2:3 with yerrorlines ls 101 pt  3 ps 1.5 lw 3 title '',\
brass_07_27 using 1:2:3 with yerrorlines ls 102 pt  3 ps 1.5 lw 3 title ''

unset multiplot
reset