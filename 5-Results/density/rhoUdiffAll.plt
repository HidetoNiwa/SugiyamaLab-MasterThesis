set terminal epslatex standalone header \
" \
\\usepackage{amssymb, amsmath, bm}\n\
\\usepackage{siunitx}\n \
"
set terminal epslatex size 5.4, 3.4 standalone color solid 9
 
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

set size ratio 0.75
set style fill solid 10

set label 12 center at screen 0.0,0.20 '\footnotesize{0.2 wt.\%}'
set label 13 center at screen 0.0,0.16 '\footnotesize{0.5 wt.\%}'
set label 14 center at screen 0.0,0.12 '\footnotesize{0.7 wt.\%}'
set label 15 center at screen 0.0,0.08 '\footnotesize{1.0 wt.\%}'
set label 16 center at screen 0.0,0.04 '\footnotesize{1.3 wt.\%}'
set label 17 center at screen 0.0,0 '\footnotesize{1.5 wt.\%}'

set label 22 center at screen 0.12,0.27 '\footnotesize{Aluminum}'
set label 26 center at screen 0.24,0.27 '\footnotesize{Alumina}'
set label 23 center at screen 0.36,0.30 '\footnotesize{Steel/}'
set label 24 center at screen 0.36,0.27 '\footnotesize{Stainless}'
set label 25 center at screen 0.48,0.27 '\footnotesize{Brass}'

set label 32 center at screen 0.12,0.235 '\footnotesize{2700}'
set label 36 center at screen 0.24,0.235 '\footnotesize{3800}'
set label 33 center at screen 0.36,0.235 '\footnotesize{7900}'
set label 34 center at screen 0.48,0.235 '\footnotesize{8700}'

set label 39 center at screen 0.0,0.235 '\footnotesize{$\rho$[kg/m$^3$]}'

#0.2
set label 52 center at screen 0.12,0.20 point ls 101 pt 2 ps 1.5
set label 53 center at screen 0.36,0.20 point ls 101 pt 6 ps 1.5
set label 54 center at screen 0.48,0.20 point ls 101 pt 8 ps 1.5
set label 55 center at screen 0.24,0.20 point ls 101 pt 4 ps 1.5

#0.5
set label 62 center at screen 0.12,0.16 point ls 102 pt 2 ps 1.5
set label 63 center at screen 0.36,0.16 point ls 102 pt 6 ps 1.5
set label 64 center at screen 0.48,0.16 point ls 102 pt 8 ps 1.5
set label 65 center at screen 0.24,0.16 point ls 102 pt 4 ps 1.5

#0.7
set label 72 center at screen 0.12,0.12 point ls 103 pt 2 ps 1.5
set label 73 center at screen 0.36,0.12 point ls 103 pt 6 ps 1.5
set label 74 center at screen 0.48,0.12 point ls 103 pt 8 ps 1.5
set label 75 center at screen 0.24,0.12 point ls 103 pt 4 ps 1.5

#1.0
set label 82 center at screen 0.12,0.08 point ls 104 pt 2 ps 1.5
set label 83 center at screen 0.36,0.08 point ls 104 pt 6 ps 1.5
set label 84 center at screen 0.48,0.08 point ls 104 pt 8 ps 1.5
set label 85 center at screen 0.24,0.08 point ls 104 pt 4 ps 1.5

#1.3
set label 102 center at screen 0.12,0.04 point ls 105 pt 2 ps 1.5
set label 103 center at screen 0.36,0.04 point ls 105 pt 6 ps 1.5
set label 104 center at screen 0.48,0.04 point ls 105 pt 8 ps 1.5
set label 105 center at screen 0.24,0.04 point ls 105 pt 4 ps 1.5

set label 113 center at screen 0.36,0 point ls 106 pt 6 ps 1.5
set label 114 center at screen 0.48,0 point ls 106 pt 8 ps 1.5
set label 115 center at screen 0.24,0 point ls 106 pt 4 ps 1.5

 
####################################################################################################
 
set lmargin screen 0
set rmargin screen 0.5

set tmargin screen 1
set bmargin screen 0.42
 
####################################################################################################
 
set key width 0.5 box opaque spacing 1.1 samplen 1 Left reverse
set key at screen 1,0.13
unset key
 
####################################################################################################

set logscale x

set label 11 center at graph 0.04,0.95 '(a)'

set format x '$10^{%L}$'
set xlabel '{\Large $ \Delta\rho{}^\frac{n-1}{n}\displaystyle [$\SI{}{(kg/m^3)^{(n-1/n)}}$]$}' offset 0,0.4
set xrange [1E-11:1E-3]
set xtics 100
set mxtics 10
 
set ylabel '{\Large $ U_\text{on}/U_\text{off} \displaystyle [$\SI{}{-}$]$}' offset 0.5,0
set format y '$%g$'
set yrange [0.9:1.6]
set ytics 1,0.2,1.6
set mytics 2
 
plot \
al_02 using 3:($6):($7) with yerrorlines ls 101 pt 2 ps 1.5 lw 3 title 'aluminum',\
alumina_02 using 3:($6):($7) with yerrorlines ls 101 pt 4 ps 1.5 lw 3 title 'alumina',\
stainless_02 using 3:($6):($7) with yerrorlines ls 101 pt 6 ps 1.5 lw 3 title 'stainless',\
brass_02 using 3:($6):($7) with yerrorlines ls 101 pt 8 ps 1.5 lw 3 title 'brass',\
al_05 using 3:($6):($7) with yerrorlines ls 102 pt 2 ps 1.5 lw 3 title 'aluminum',\
alumina_05 using 3:($6):($7) with yerrorlines ls 102 pt 4 ps 1.5 lw 3 title 'alumina',\
stainless_05 using 3:($6):($7) with yerrorlines ls 102 pt 6 ps 1.5 lw 3 title 'stainless',\
brass_05 using 3:($6):($7) with yerrorlines ls 102 pt 8 ps 1.5 lw 3 title 'brass',\
al_07 using 3:($6):($7) with yerrorlines ls 103 pt 2 ps 1.5 lw 3 title 'aluminum',\
alumina_07 using 3:($6):($7) with yerrorlines ls 103 pt 4 ps 1.5 lw 3 title 'alumina',\
stainless_07 using 3:($6):($7) with yerrorlines ls 103 pt 6 ps 1.5 lw 3 title 'stainless',\
brass_07 using 3:($6):($7) with yerrorlines ls 103 pt 8 ps 1.5 lw 3 title 'brass',\
al_10 using 3:($6):($7) with yerrorlines ls 104 pt 2 ps 1.5 lw 3 title 'aluminum',\
alumina_10 using 3:($6):($7) with yerrorlines ls 104 pt 4 ps 1.5 lw 3 title 'alumina',\
stainless_10 using 3:($6):($7) with yerrorlines ls 104 pt 6 ps 1.5 lw 3 title 'stainless',\
brass_10 using 3:($6):($7) with yerrorlines ls 104 pt 8 ps 1.5 lw 3 title 'brass',\
al_13 using 3:($6):($7) with yerrorlines ls 105 pt 2 ps 1.5 lw 3 title 'aluminum',\
alumina_13 using 3:($6):($7) with yerrorlines ls 105 pt 4 ps 1.5 lw 3 title 'alumina',\
stainless_13 using 3:($6):($7) with yerrorlines ls 105 pt 6 ps 1.5 lw 3 title 'stainless',\
brass_13 using 3:($6):($7) with yerrorlines ls 105 pt 8 ps 1.5 lw 3 title 'brass',\
alumina_15 using 3:($6):($7) with yerrorlines ls 106 pt 4 ps 1.5 lw 3 title 'alumina',\
stainless_15 using 3:($6):($7) with yerrorlines ls 106 pt 6 ps 1.5 lw 3 title 'stainless',\
brass_15 using 3:($6):($7) with yerrorlines ls 106 pt 8 ps 1.5 lw 3 title 'brass'

set lmargin screen 0.5
set rmargin screen 1

set label 11 center at graph 0.04,0.95 '(b)'

set xrange [1.001E-11:1.3E-8]
set xtics 1E-11,10,1E-8
set mxtics 10 

set ylabel '' offset 0.5,0
set format y ''

plot \
al_02 using 3:($6):($7) with yerrorlines ls 101 pt 2 ps 1.5 lw 3 title 'aluminum',\
alumina_02 using 3:($6):($7) with yerrorlines ls 101 pt 4 ps 1.5 lw 3 title 'alumina',\
stainless_02 using 3:($6):($7) with yerrorlines ls 101 pt 6 ps 1.5 lw 3 title 'stainless',\
brass_02 using 3:($6):($7) with yerrorlines ls 101 pt 8 ps 1.5 lw 3 title 'brass',\
al_05 using 3:($6):($7) with yerrorlines ls 102 pt 2 ps 1.5 lw 3 title 'aluminum',\
alumina_05 using 3:($6):($7) with yerrorlines ls 102 pt 4 ps 1.5 lw 3 title 'alumina',\
stainless_05 using 3:($6):($7) with yerrorlines ls 102 pt 6 ps 1.5 lw 3 title 'stainless',\
brass_05 using 3:($6):($7) with yerrorlines ls 102 pt 8 ps 1.5 lw 3 title 'brass',\
al_07 using 3:($6):($7) with yerrorlines ls 103 pt 2 ps 1.5 lw 3 title 'aluminum',\
alumina_07 using 3:($6):($7) with yerrorlines ls 103 pt 4 ps 1.5 lw 3 title 'alumina',\
stainless_07 using 3:($6):($7) with yerrorlines ls 103 pt 6 ps 1.5 lw 3 title 'stainless',\
brass_07 using 3:($6):($7) with yerrorlines ls 103 pt 8 ps 1.5 lw 3 title 'brass',\
al_10 using 3:($6):($7) with yerrorlines ls 104 pt 2 ps 1.5 lw 3 title 'aluminum',\
alumina_10 using 3:($6):($7) with yerrorlines ls 104 pt 4 ps 1.5 lw 3 title 'alumina',\
stainless_10 using 3:($6):($7) with yerrorlines ls 104 pt 6 ps 1.5 lw 3 title 'stainless',\
brass_10 using 3:($6):($7) with yerrorlines ls 104 pt 8 ps 1.5 lw 3 title 'brass',\
al_13 using 3:($6):($7) with yerrorlines ls 105 pt 2 ps 1.5 lw 3 title 'aluminum',\
alumina_13 using 3:($6):($7) with yerrorlines ls 105 pt 4 ps 1.5 lw 3 title 'alumina',\
stainless_13 using 3:($6):($7) with yerrorlines ls 105 pt 6 ps 1.5 lw 3 title 'stainless',\
brass_13 using 3:($6):($7) with yerrorlines ls 105 pt 8 ps 1.5 lw 3 title 'brass',\
alumina_15 using 3:($6):($7) with yerrorlines ls 106 pt 4 ps 1.5 lw 3 title 'alumina',\
stainless_15 using 3:($6):($7) with yerrorlines ls 106 pt 6 ps 1.5 lw 3 title 'stainless',\
brass_15 using 3:($6):($7) with yerrorlines ls 106 pt 8 ps 1.5 lw 3 title 'brass'

set tmargin 0
set bmargin 0
set lmargin 0
set rmargin 0
set size 0.25,0.22
set origin 0.55,0.77

set label 11 center at graph 0.04,0.95 ''

unset logscale xy

set xlabel '{\scriptsize $\Delta\rho{}^\frac{n-1}{n}$}' offset 0,1.32
set format x '{\scriptsize $%2.0l\times10^{%L}$}'
set xrange [0:1E-8]
set xtics 5E-9 offset 0,0.6
set mxtics 2

set ylabel '{\scriptsize $U_\text{on}/U_\text{off}$}' offset 4.3,0
set ytics 1,0.2,1.6 offset -0.5,0
set format y '{\scriptsize $%2.1f$}'

plot \
al_02 using 3:($6):($7) with yerrorlines ls 101 pt 2 ps 1.5 lw 3 title 'aluminum',\
alumina_02 using 3:($6):($7) with yerrorlines ls 101 pt 4 ps 1.5 lw 3 title 'alumina',\
stainless_02 using 3:($6):($7) with yerrorlines ls 101 pt 6 ps 1.5 lw 3 title 'stainless',\
brass_02 using 3:($6):($7) with yerrorlines ls 101 pt 8 ps 1.5 lw 3 title 'brass',\
al_05 using 3:($6):($7) with yerrorlines ls 102 pt 2 ps 1.5 lw 3 title 'aluminum',\
alumina_05 using 3:($6):($7) with yerrorlines ls 102 pt 4 ps 1.5 lw 3 title 'alumina',\
stainless_05 using 3:($6):($7) with yerrorlines ls 102 pt 6 ps 1.5 lw 3 title 'stainless',\
brass_05 using 3:($6):($7) with yerrorlines ls 102 pt 8 ps 1.5 lw 3 title 'brass',\
al_07 using 3:($6):($7) with yerrorlines ls 103 pt 2 ps 1.5 lw 3 title 'aluminum',\
alumina_07 using 3:($6):($7) with yerrorlines ls 103 pt 4 ps 1.5 lw 3 title 'alumina',\
stainless_07 using 3:($6):($7) with yerrorlines ls 103 pt 6 ps 1.5 lw 3 title 'stainless',\
brass_07 using 3:($6):($7) with yerrorlines ls 103 pt 8 ps 1.5 lw 3 title 'brass',\
al_10 using 3:($6):($7) with yerrorlines ls 104 pt 2 ps 1.5 lw 3 title 'aluminum',\
alumina_10 using 3:($6):($7) with yerrorlines ls 104 pt 4 ps 1.5 lw 3 title 'alumina',\
stainless_10 using 3:($6):($7) with yerrorlines ls 104 pt 6 ps 1.5 lw 3 title 'stainless',\
brass_10 using 3:($6):($7) with yerrorlines ls 104 pt 8 ps 1.5 lw 3 title 'brass',\
al_13 using 3:($6):($7) with yerrorlines ls 105 pt 2 ps 1.5 lw 3 title 'aluminum',\
alumina_13 using 3:($6):($7) with yerrorlines ls 105 pt 4 ps 1.5 lw 3 title 'alumina',\
stainless_13 using 3:($6):($7) with yerrorlines ls 105 pt 6 ps 1.5 lw 3 title 'stainless',\
brass_13 using 3:($6):($7) with yerrorlines ls 105 pt 8 ps 1.5 lw 3 title 'brass',\
alumina_15 using 3:($6):($7) with yerrorlines ls 106 pt 4 ps 1.5 lw 3 title 'alumina',\
stainless_15 using 3:($6):($7) with yerrorlines ls 106 pt 6 ps 1.5 lw 3 title 'stainless',\
brass_15 using 3:($6):($7) with yerrorlines ls 106 pt 8 ps 1.5 lw 3 title 'brass'

unset multiplot
reset