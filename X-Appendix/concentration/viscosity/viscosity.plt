set terminal epslatex standalone header \
" \
\\usepackage{amssymb, amsmath, bm}\n\
\\usepackage{siunitx}\n \
"
set terminal epslatex size 4, 2.5 standalone color solid 9
 
set encoding utf8
set datafile separator ','

set tics front 
set border front
set border lw 3
  
if (!exists("fname")) fname='test'

oname = sprintf("%s.tex", fname)
set output oname

file_01 = sprintf('./exp-data.csv')
file_95 = sprintf('./95.csv') 
file_105 = sprintf('./105.csv')
shiratori = sprintf('./ref.csv')
iwamuro = sprintf('./ref_iwamuro.csv')

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
 
set size ratio 0.95
set style fill solid 0.2
 
####################################################################################################
 
set lmargin screen 0.1
set rmargin screen 0.98
 
set tmargin screen 0.97
set bmargin screen 0.14
 
####################################################################################################
 
set key width -2 spacing 1.1 samplen 0.8 Left reverse invert
set key bottom outside
 
####################################################################################################
 
f(x) = k*x**(n-1)
g(x) = k1*x**(n1-1)
h(x) = k2*x**(n2-1)
k=8.3665
n=0.237
k1=9.4
n1=0.23
k2=4.9
n2=0.18

p(x) = k3*x**(n3-1)
q(x) = k4*x**(n4-1)
k3=5.2208
n3=0.255
k4=9.5589
n4=0.223

set logscale x
set logscale y

set format x '$%g$'
set xlabel '{\Large shear rate $\dot{\gamma}$ [$\SI{}{1/s}$]}' offset 0,0.4
set xrange [0.1:400]
set xtics 10
set mxtics 5
 
set ylabel '{\Large Viscosity $\mu$ [$\SI{}{Pa \cdot s}$]}' offset 2.1,0
set format y '$%g$'
set yrange [0.1:20]
set ytics 10 offset 0,0
set mytics 5


#fit g(x) iwamuro using 1:2 via k1,n1
#fit h(x) shiratori using 1:2 via n2
 
plot \
shiratori using 1:2 with points ls 114 pt  3 ps 1.5 lw 4 title 'Shiratori \textit{et al}.[34]',\
h(x) ls 114 lw 4 title '',\
iwamuro using 1:2 with points ls 115 pt  3 ps 1.5 lw 4 title 'Iwamuro(2020) [26]',\
g(x) ls 115 lw 4 title '',\
file_105 using 1:2:3 with yerror ls 103 pt  3 ps 1.5 lw 4 title 'PAA 1.05wt.\%',\
q(x) ls 103 lw 4 title '',\
file_01 using 1:2:3 with yerror ls 101 pt  3 ps 1.5 lw 4 title 'PAA 1.00wt.\%',\
f(x) ls 101 lw 4 title '',\
file_95 using 1:2:3 with yerror ls 102 pt  3 ps 1.5 lw 4 title 'PAA 0.95wt.\%',\
p(x) ls 102 lw 4 title ''

unset multiplot
reset