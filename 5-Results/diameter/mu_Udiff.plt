set terminal epslatex standalone header \
" \
\\usepackage{amssymb, amsmath, bm}\n\
\\usepackage{siunitx}\n \
"
set terminal epslatex size 5, 2.4 standalone color solid 9
 
set encoding utf8
set datafile separator ','

set tics front 
set border front
set border lw 3 
set size ratio 1
  
if (!exists("fname")) fname='test'

oname = sprintf("%s.tex", fname)
set output oname

D8 = sprintf('./data/8.csv')
D10 = sprintf('./data/10.csv')
D11 = sprintf('./data/11.csv')
D12 = sprintf('./data/12.csv')
D13 = sprintf('./data/13.csv')
D14 = sprintf('./data/14.csv')
D15 = sprintf('./data/15.csv')
D20 = sprintf('./data/20.csv')
iwamuro = sprintf('./data/iwamuro.csv')

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

set size ratio 1
set style fill solid 10
 
####################################################################################################
 
set lmargin screen 0
set rmargin screen 0.49

set tmargin screen 1
set bmargin screen 0

####################################################################################################
 
set key width 0.5 spacing 1.1 samplen 1 Left reverse
set key at screen 0.48,0.9
unset key
 
####################################################################################################

set label 31 at graph 0.02,0.95 '(a)' front

set format x '$%g$'
set xlabel '{\Large $\dfrac{\mu_\text{U}}{\mu_\text{ABL}}\dfrac{\delta}{a} \displaystyle [$\SI{}{-}$]$}' offset 0,-0.5
set xrange [0:1.5]
set xtics 0.5
set mxtics 2
 
set ylabel '{\Large $ U_\text{on}/U_\text{off} \displaystyle [$\SI{}{-}$]$}' offset 0.5,0
set format y '$%g$'
set yrange [0.9:1.4]
set ytics 0.2
set mytics 2
 
plot \
D8 using 3:5:4:6 with xyerrorlines ls 101 pt 2 ps 1.5 lw 3 title '$D=8\SI{}{mm}$',\
D10 using 3:5:4:6 with xyerrorlines ls 102 pt 2 ps 1.5 lw 3 title '$D=10\SI{}{mm}$',\
D11 using 3:5:4:6 with xyerrorlines ls 103 pt 2 ps 1.5 lw 3 title '$D=11\SI{}{mm}$',\
D12 using 3:5:4:6 with xyerrorlines ls 104 pt 2 ps 1.5 lw 3 title '$D=12\SI{}{mm}$',\
D13 using 3:5:4:6 with xyerrorlines ls 105 pt 2 ps 1.5 lw 3 title '$D=13\SI{}{mm}$',\
D14 using 3:5:4:6 with xyerrorlines ls 106 pt 2 ps 1.5 lw 3 title '$D=14\SI{}{mm}$',\
D15 using 3:5:4:6 with xyerrorlines ls 107 pt 2 ps 1.5 lw 3 title '$D=15\SI{}{mm}$',\
D20 using 3:5:4:6 with xyerrorlines ls 108 pt 2 ps 1.5 lw 3 title '$D=20\SI{}{mm}$',\
iwamuro using 5:4 with points ls 111 pt 2 ps 1.5 lw 3 title 'iwamuro(2020)'
 
####################################################################################################
 
set lmargin screen 0.51
set rmargin screen 1

set tmargin screen 1
set bmargin screen 0

####################################################################################################
 
set key width 0.5 spacing 1.1 samplen 1 Left reverse
set key at screen 0.445,0.9
 
####################################################################################################

set label 31 at graph 0.02,0.95 '(b)' front

set xrange [0:0.3]
set xtics 0.1
set mxtics 2

set format y ''
set ylabel '' offset 0.5,0
 
plot \
D8 using 3:5:4:6 with xyerrorlines ls 101 pt 2 ps 1.5 lw 3 title '$D=8\SI{}{mm}$',\
D10 using 3:5:4:6 with xyerrorlines ls 102 pt 2 ps 1.5 lw 3 title '$D=10\SI{}{mm}$',\
D11 using 3:5:4:6 with xyerrorlines ls 103 pt 2 ps 1.5 lw 3 title '$D=11\SI{}{mm}$',\
D12 using 3:5:4:6 with xyerrorlines ls 104 pt 2 ps 1.5 lw 3 title '$D=12\SI{}{mm}$',\
D13 using 3:5:4:6 with xyerrorlines ls 105 pt 2 ps 1.5 lw 3 title '$D=13\SI{}{mm}$',\
D14 using 3:5:4:6 with xyerrorlines ls 106 pt 2 ps 1.5 lw 3 title '$D=14\SI{}{mm}$',\
D15 using 3:5:4:6 with xyerrorlines ls 107 pt 2 ps 1.5 lw 3 title '$D=15\SI{}{mm}$',\
D20 using 3:5:4:6 with xyerrorlines ls 108 pt 2 ps 1.5 lw 3 title '$D=20\SI{}{mm}$'

unset multiplot
reset