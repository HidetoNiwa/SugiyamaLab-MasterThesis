set terminal epslatex standalone header \
" \
\\usepackage{amssymb, amsmath, bm}\n\
\\usepackage{siunitx}\n \
"
set terminal epslatex size 4.2, 4.5 standalone color solid 9
 
set encoding utf8
set datafile separator ','

set tics front 
set border front
set border lw 3
set size ratio 1
  
if (!exists("fname")) fname='test'

oname = sprintf("%s.tex", fname)
set output oname
 
file_005 = sprintf('./0.05.csv')
file_020 = sprintf('./0.2.csv')

file_050 = sprintf('./0.5.csv')
file_070 = sprintf('./0.7.csv')

file_100 = sprintf('./1.0.csv')
file_130 = sprintf('./1.3.csv')

file_150 = sprintf('./1.5.csv')

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
 
set size ratio 1.75
set style fill solid 0.5
 
####################################################################################################
 
set lmargin screen 0
set rmargin screen 0.34
 
set tmargin screen 1
set bmargin screen 0.52
 
####################################################################################################
 
set key width -1 spacing 1.2 samplen 1.1 Left reverse
set key at screen 0.5,0.97
 
####################################################################################################

set label 1 at graph 0.03,0.93 '(a)'

set format x '$%g$'
set xlabel '' offset 0,0.4
set xrange [0:300]
set xtics 100
set mxtics 2
 
set ylabel '{\Large Depth $\displaystyle y [$\SI{}{mm}$]$}' offset 0,0
set format y '$%g$'
set yrange [400:0]
set ytics 200 offset 0,0
set mytics 5
 
plot \
file_005 using 4:(400-($1)) with lines ls 107 lw 2.1 title '0.05wt.\%',\
file_020 using 4:(400-($1)) with lines ls 101 lw 2.1 title '0.2wt.\%'

set lmargin screen 0.5
set rmargin screen 0.840

set label 1 at graph 0.03,0.93 '(b)'
set key at screen 0.985,0.97

set ylabel '' offset 1.0,0

plot \
file_050 using 4:(400-($1)) with lines ls 102 lw 2.1 title '0.5wt.\%',\
file_070 using 4:(400-($1)) with lines ls 103 lw 2.1 title '0.7wt.\%'

set lmargin screen 0
set rmargin screen 0.34

set tmargin screen 0.48
set bmargin screen 0

set label 1 at graph 0.03,0.93 '(c)'
set key at screen 0.485,0.47

set xlabel '{\Large Pressure $\Delta{}P$ [$\SI{}{kPa}$]}' offset 0,0.4
set ylabel '{\Large Depth $\displaystyle y [$\SI{}{mm}$]$}' offset 0,0

plot \
file_100 using 2:(400-($1)) with lines ls 104 lw 2.1 title '1.0wt.\%',\
file_130 using 4:(400-($1)) with lines ls 105 lw 2.1 title '1.3wt.\%'

set lmargin screen 0.5
set rmargin screen 0.84

set label 1 at graph 0.03,0.93 '(d)'
set key at screen 0.99,0.47

set ylabel '' offset 1.0,0

plot \
file_150 using 4:(400-($1)) with lines ls 106 lw 2.1 title '1.5wt.\%'

unset multiplot
reset
