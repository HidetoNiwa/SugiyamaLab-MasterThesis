set terminal epslatex standalone header \
" \
\\usepackage{amssymb, amsmath, bm}\n\
\\usepackage{siunitx}\n \
"
set terminal epslatex size 5, 2.2 standalone color solid 9
 
set encoding utf8
set datafile separator ','

set tics front 
set border front
set border lw 3 
set size ratio 1
  
if (!exists("fname")) fname='test'

oname = sprintf("%s.tex", fname)
set output oname

D5 = sprintf('./data/5.csv')
D10 = sprintf('./data/10.csv')
D15 = sprintf('./data/15.csv')
D20 = sprintf('./data/20.csv')

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
set rmargin screen 0.46

set tmargin screen 1
set bmargin screen 0

####################################################################################################
 
set key spacing 1.1 samplen 1 Left reverse
set key at graph 0.75,0.94
 
####################################################################################################

set label 31 at graph 0.02,0.95 '(a)' front

set format x '$%g$'
set xlabel '{\Large Diameter $D \displaystyle [$\SI{}{mm}$]$}' offset 0,0.4
set xrange [4:22]
set xtics 4
set mxtics 2
 
set ylabel '{\Large $ U_\text{T} \displaystyle [$\SI{}{mm/s}$]$}' offset 0.5,0
set format y '$%g$'
set yrange [0:1200]
set ytics 400
set mytics 2
 
plot \
D5 using ($1)*2000:($5):($6) with yerrorlines ls 101 pt 2 ps 1.5 lw 3 title '$ U_\text{T}$',\
D10 using ($1)*2000:($5):($6) with yerrorlines ls 101 pt 2 ps 1.5 lw 3 title '',\
D15 using ($1)*2000:($5)*1:($6)*1 with yerrorlines ls 101 pt 2 ps 1.5 lw 3 title '',\
D20 using ($1)*2000:($5)*1:($6)*1 with yerrorlines ls 101 pt 2 ps 1.5 lw 3 title ''

####################################################################################################

set lmargin screen 0.54
set rmargin screen 1

set tmargin screen 1
set bmargin screen 0

####################################################################################################
 
set key spacing 1.1 samplen 1 Left reverse
set key at graph 1,0.94
 
####################################################################################################

set label 31 at graph 0.02,0.95 '(b)' front
 
set ylabel '{\Large $ U_\text{on}/U_\text{off} \displaystyle [$\SI{}{-}$]$}' offset 1,0
set format y '$%g$'
set yrange [0.9:1.3]
set ytics 0.1
set mytics 2
 
plot \
D5 using ($1)*2000:($7):($8) with yerrorlines ls 102 pt 2 ps 1.5 lw 3 title '$ U_\text{on}/U_\text{off}$',\
D10 using ($1)*2000:($7):($8) with yerrorlines ls 102 pt 2 ps 1.5 lw 3 title '',\
D15 using ($1)*2000:($7):($8) with yerrorlines ls 102 pt 2 ps 1.5 lw 3 title '',\
D20 using ($1)*2000:($7):($8) with yerrorlines ls 102 pt 2 ps 1.5 lw 3 title ''

unset multiplot
reset