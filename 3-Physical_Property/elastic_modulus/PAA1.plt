set terminal epslatex standalone header \
" \
\\usepackage{amssymb, amsmath, bm}\n\
\\usepackage{siunitx}\n \
"
set terminal epslatex size 4.2, 3 standalone color solid 9
 
set encoding utf8
set datafile separator ';'

set clip two

set tics front 
set border front
set border lw 4
  
if (!exists("fname")) fname='test'

oname = sprintf("%s.tex", fname)
set output oname

file_010 = sprintf('./PAA1_1.csv')

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

#スライド用の明度の低い色
set style line 201 lt 1 lw 2 ps 2 lc rgb '#991c1c' #red
set style line 202 lt 1 lw 2 ps 2 lc rgb '#165380' #blue
set style line 203 lt 1 lw 2 ps 2 lc rgb '#154d15' #green
set style line 204 lt 1 lw 2 ps 2 lc rgb '#cc650a' #orange
set style line 205 lt 1 lw 2 ps 2 lc rgb '#118b99' #light-blue
set style line 206 lt 1 lw 2 ps 2 lc rgb '#4f3766' #purple
set style line 207 lt 1 lw 2 ps 2 lc rgb '#808017' #yellow
set style line 208 lt 1 lw 2 ps 2 lc rgb '#995083' #orchid
set style line 209 lt 1 lw 2 ps 2 lc rgb '#4d4d4d' #gray
set style line 210 lt 1 lw 2 ps 2 lc rgb '#4d2f29' #brown

set style arrow 1 size graph 0.02,20 filled linewidth 3 linecolor rgb '#d62728'
set style arrow 2 size graph 0.02,20 nohead linewidth 3 linecolor rgb '#d62728'
set style arrow 3 size graph 0.02,20 filled linewidth 3 linecolor rgb '#1f77b4'
set style arrow 4 size graph 0.02,20 nohead linewidth 3 linecolor rgb '#1f77b4'
set style arrow 5 size graph 0.02,20 filled linewidth 3 linecolor rgb '#2ca02c'
set style arrow 6 size graph 0.02,20 nohead linewidth 3 linecolor rgb '#2ca02c'

set palette defined (0 '#999999',\
                     1 '#00008b',\
					 2 '#2ca9e1',\
					 3 '#008000',\
					 4 '#c8c800',\
					 5 '#ff0000',\
					 6 '#1a1a1a') positive
 
set format '$%g$'
 
set size ratio 1
set style fill solid 0.5

# 1%分
	####################################################################################################
	
	set lmargin screen 0.05
	set rmargin screen 0.95
	
	set tmargin screen 0.95
	set bmargin screen 0.05
	
	####################################################################################################
	
	set key width -2 box opaque spacing 1.3 samplen 1 Left reverse
	set key right bottom outside
	
	####################################################################################################
	
	set arrow  1 as  1 from 0.5,22 to 0.15,22 #Red_arrow
	set arrow  2 as  2 from 0.5,22 to 0.5,15 #Red_line
	set arrow  3 as  3 from 0.5,1.5 to 0.15,1.5 #Blue_arrow
	set arrow  4 as  4 from 0.5,1.5 to 0.5,2.5 #Blue_line
	set arrow  6 as  6 from 0.15,0.03 to 0.15,0.05
	set arrow  5 as  5 from 0.15,0.05 to 0.5,0.05

	set format x '$10^{%T}$'
	set xlabel '{\Large $\tau$ [$\SI{}{Pa}$]}' offset 0,0.4
	set xrange [0.01:1000]
	set xtics 10
	set mxtics 10
	
	set ylabel "$G',G''$ [Pa]" offset 2,0
	set format y '$10^{%T}$'
	set yrange [0.01:100]
	set ytics 10 offset 0,0
	set mytics 10
	set ytics nomirror

	set y2label 'tan$\left(\eta\right)$ [-]' offset 0,0
	set format y2 '$%g$'
	set y2range [0:4]
	set y2tics 1 offset 0,0
	set my2tics 2

	f(x)=1
	set logscale xy

	plot \
	file_010 using 11:5 axis x1y1 ls 101 pt 6 ps 2 lw 3 title '$G^{\prime}$',\
	file_010 using 11:6 axis x1y1 ls 102 pt 10 ps 2 lw 3 title '$G^{\prime\prime}$',\
	file_010 using 11:8 axis x1y2 ls 103 pt 4 ps 2 lw 3 title 'tan$\left(\eta\right)$',\
	f(x) axis x1y2 lc black lw 2 title ''

unset multiplot
reset