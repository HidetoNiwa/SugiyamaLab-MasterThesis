set terminal epslatex standalone header \
" \
\\usepackage{amssymb, amsmath, bm}\n\
\\usepackage{siunitx}\n \
"
set terminal epslatex size 5, 2.5 standalone color solid 9
 
set encoding utf8
set datafile separator ','

set tics front 
set border front
set border lw 3
set size ratio 1
  
if (!exists("fname")) fname='test'

oname = sprintf("%s.tex", fname)
set output oname
 
file_000 = sprintf('./20210420-0_magnet.csv')
file_039 = sprintf('./20210420-39_magnet.csv')
file_000_1 = sprintf('./20210705-0_pump.csv')
file_039_1 = sprintf('./20210705-39_pump.csv')
iwamuro_000 = sprintf('./iwamuroPAA_OFF.csv')
iwamuro_039 = sprintf('./iwamuroPAA_72kPa.csv')

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
 
set size ratio 0.5
set style fill solid 0.5
 
####################################################################################################
 
set lmargin screen 0.14
set rmargin screen 0.98
 
set tmargin screen 0.97
set bmargin screen 0.14
 
####################################################################################################
 
set key width -2.5 box opaque spacing 1.3 samplen 1 Left horizontal reverse maxcols 3
set key right bottom
 
####################################################################################################
 
set format x '$%g$'
set xlabel '{\Large Time $t$ [$\SI{}{s}$]}' offset 0,0.4
set xrange [0:2]
set xtics 0.5
set mxtics 5
 
set ylabel '{\Large Falling speed $\displaystyle U [$\SI{}{mm/s}$]$}' offset -1.0,0
set format y '$%g$'
set yrange [0:270]
set ytics 100 offset 0,0
set mytics 2
 
plot \
file_000 using 1:2:3 with yerrorlines ls 111 pt  3 ps 1.25 lw 4 title 'US off (Magnet)',\
file_039 using 1:2:3 with yerrorlines ls 101 pt  3 ps 1.25 lw 4 title '39kHz (Magnet)',\
file_000_1 using 1:2:3 with yerrorlines ls 112 pt  3 ps 1.25 lw 4 title 'US off (Vacuum)',\
file_039_1 using 1:2:3 with yerrorlines ls 102 pt  3 ps 1.25 lw 4 title '39kHz (Vacuum)',\
iwamuro_000 using 1:3:2 with yerrorlines ls 113 pt  3 ps 1.25 lw 4 title 'US off (Iwamuro)',\
iwamuro_039 using 1:3:2 with yerrorlines ls 103 pt  3 ps 1.25 lw 4 title '39kHz (Iwamuro)',\

unset multiplot
reset