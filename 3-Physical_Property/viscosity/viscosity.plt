set terminal epslatex standalone header \
" \
\\usepackage{amssymb, amsmath, bm}\n\
\\usepackage{siunitx}\n \
"
set terminal epslatex size 6.4, 2.5 standalone color solid 9
 
set encoding utf8
set datafile separator ','

set tics front 
set border front
set border lw 3
  
if (!exists("fname")) fname='test'

oname = sprintf("%s.tex", fname)
set output oname

file_100 = sprintf('./1.csv')
file_020 = sprintf('./0.2.csv') 
file_005 = sprintf('./0.05.csv')
file_050 = sprintf('./0.7.csv')
file_070 = sprintf('./0.5.csv')
file_130 = sprintf('./1.3.csv')
file_150 = sprintf('./1.5.csv')

water = sprintf('./water.csv')

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
 
set size ratio 0.9
set style fill solid 0.2

####################################################################################################
 
set lmargin screen 0.02
set rmargin screen 0.46
 
set tmargin screen 0.97
set bmargin screen 0.14
 
####################################################################################################
 
set key width -2 spacing 1.1 samplen 0.8 Left reverse 
set key at screen 0.35,0.25
# unset key

####################################################################################################

# set logscale x
set logscale y

set label 1 at screen -0.06,1.02 '(a)'

set format x '$%g$'
set xlabel '{\Large shear rate $\dot{\gamma}$ [$\SI{}{1/s}$]}' offset 0,0.4
set xrange [0:400]
set xtics 200
set mxtics 5
 
set ylabel '{\Large Viscosity $\mu$ [$\SI{}{Pa \cdot s}$]}' offset 2.1,0
set format y '$%g$'
set yrange [0.0001:0.01]
set ytics 10 offset 0,0
set mytics 10

plot \
water using 1:($2)/1000:($3)/1000 with yerror ls 102 pt  2 ps 1.5 lw 4 title 'water',\

####################################################################################################
 
set lmargin screen 0.46
set rmargin screen 0.98
 
set tmargin screen 0.97
set bmargin screen 0.14
 
####################################################################################################
 
set key width -2 spacing 1.1 samplen 0.8 Left reverse 
set key bottom outside
# unset key

####################################################################################################
 
f(x) = k*x**(n-1)
g(x) = k1*x**(n1-1)
h(x) = k2*x**(n2-1)
i(x) = k3*x**(n3-1)
j(x) = k4*x**(n4-1)
p(x) = k5*x**(n5-1)
q(x) = k6*x**(n6-1)

k=8.7999
n=0.234
k1=0.0546
n1=0.586
k2=0.284
n2=0.498
k3=7.28
n3=0.254
k4=11.8
n4=0.206
k5=3.72999
n5=0.304
k6=17.504
n6=0.169

set logscale x
set logscale y

set label 2 at screen 0.41,1.02 '(b)'

set format x '$%g$'
set xlabel '{\Large shear rate $\dot{\gamma}$ [$\SI{}{1/s}$]}' offset 0,0.4
set xrange [1:400]
set xtics 10
set mxtics 10
 
# set ylabel '{\Large Viscosity $\mu$ [$\SI{}{Pa \cdot s}$]}' offset 2.1,0
set ylabel ''
set format y '$%g$'
set yrange [0.001:20]
set ytics 10 offset 0,0
set mytics 10

# set label 10 center at screen 0.72,0.65 'PAA[wt.\%]'
# set label 11 center at screen 0.695,0.58 '0.05'
# set label 12 center at screen 0.7,0.51 '0.2'
# set label 13 center at screen 0.7,0.44 '0.5'
# set label 14 center at screen 0.7,0.37 '0.7'
# set label 15 center at screen 0.7,0.30 '1.0'
# set label 16 center at screen 0.7,0.23 '1.3'
# set label 17 center at screen 0.7,0.16 '1.5'

# set label 20 center at screen 0.8,0.65 '$k$'
# set label 21 center at screen 0.8,0.58 '0.054'
# set label 22 center at screen 0.8,0.51 '0.28'
# set label 23 center at screen 0.8,0.44 '3.7'
# set label 24 center at screen 0.8,0.37 '7.3'
# set label 25 center at screen 0.8,0.30 '8.8'
# set label 26 center at screen 0.8,0.23 '12'
# set label 27 center at screen 0.8,0.16 '18'

# set label 30 center at screen 0.9,0.65 '$n$'
# set label 31 center at screen 0.9,0.58 '0.59'
# set label 32 center at screen 0.9,0.51 '0.50'
# set label 33 center at screen 0.9,0.44 '0.30'
# set label 34 center at screen 0.9,0.37 '0.25'
# set label 35 center at screen 0.9,0.30 '0.23'
# set label 36 center at screen 0.9,0.23 '0.21'
# set label 37 center at screen 0.9,0.16 '0.17'

# set label 131 center at screen 0.73,0.58 point ls 101 pt 2 ps 2
# set label 132 center at screen 0.73,0.51 point ls 102 pt 3 ps 2
# set label 133 center at screen 0.73,0.44 point ls 103 pt 4 ps 2
# set label 134 center at screen 0.73,0.37 point ls 104 pt 6 ps 2
# set label 135 center at screen 0.73,0.30 point ls 105 pt 8 ps 2
# set label 136 center at screen 0.73,0.23 point ls 106 pt 10 ps 2
# set label 137 center at screen 0.73,0.16 point ls 107 pt 13 ps 2


#fit g(x) iwamuro using 1:2 via k1,n1
#fit h(x) shiratori using 1:2 via n2
 
plot \
file_005 using 1:2:3 with yerror ls 101 pt  2 ps 1.5 lw 4 title 'PAA 0.05wt.\%',\
g(x) ls 101 lw 4 title '',\
file_020 using 1:2:3 with yerror ls 108 pt  3 ps 1.5 lw 4 title 'PAA 0.2wt.\%',\
h(x) ls 108 lw 4 title '',\
file_050 using 1:2:3 with yerror ls 103 pt  4 ps 1.5 lw 4 title 'PAA 0.5wt.\%',\
i(x) ls 104 lw 4 title '',\
file_070 using 1:2:3 with yerror ls 104 pt  6 ps 1.5 lw 4 title 'PAA 0.7wt.\%',\
p(x) ls 103 lw 4 title '',\
file_100 using 1:2:3 with yerror ls 105 pt  8 ps 1.5 lw 4 title 'PAA 1.0wt.\%',\
f(x) ls 105 lw 4 title '',\
file_130 using 1:2:3 with yerror ls 106 pt  10 ps 1.5 lw 4 title 'PAA 1.3wt.\%',\
j(x) ls 106 lw 4 title '',\
file_150 using 1:2:3 with yerror ls 107 pt  13 ps 1.5 lw 4 title 'PAA 1.5wt.\%',\
q(x) ls 107 lw 4 title ''

unset multiplot
reset