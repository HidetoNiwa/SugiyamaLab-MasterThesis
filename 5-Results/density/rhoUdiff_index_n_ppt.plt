set terminal epslatex standalone header \
" \
\\usepackage{amssymb, amsmath, bm}\n\
\\usepackage{siunitx}\n \
"
set terminal epslatex size 5.5, 3.8 standalone color solid 9
 
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

set size ratio 1.3
set style fill solid 10

set label 11 center at screen 1.09,0.18 '$\rho =\SI{2700}{kg/m^3}$'
set label 12 center at screen 1.09,0.145 '$\rho =\SI{3800}{kg/m^3}$'
set label 13 center at screen 1.09,0.11 '$\rho =\SI{7900}{kg/m^3}$'
set label 14 center at screen 1.09,0.075 '$\rho =\SI{8700}{kg/m^3}$'


set logscale x

f(x)=a*x**(n)

####################################################################################################
 
set lmargin screen 0.02
set rmargin screen 0.276667

set tmargin screen 1
set bmargin screen 0.54
 
####################################################################################################
 
set key width 0 opaque spacing 1.1 samplen 1 Left reverse
set key at screen 1.01,0.20
 
####################################################################################################

set label 31 at graph 0.02,0.915 '(a) 0.2wt.\%' front

set format x '$10^{%L}$'
set xlabel '' offset 0,0.4
set xrange [1E-4:1E-3]
set xtics 10
set mxtics 10
 
set ylabel '{\Large $ U_\text{on}/U_\text{off} \displaystyle [$\SI{}{-}$]$}' offset 0.5,0
set format y '$%.1f$'
set yrange [0.9:1.475]
set ytics 1,0.2,1.6
set mytics 2
 
plot \
al_02 using 3:($6):($7) with yerrorlines ls 101 pt 2 ps 1.5 lw 3 title 'Aluminum',\
alumina_02 using 3:($6):($7) with yerrorlines ls 102 pt 2 ps 1.5 lw 3 title 'Alumina',\
stainless_02 using 3:($6):($7) with yerrorlines ls 103 pt 2 ps 1.5 lw 3 title 'Stainless',\
brass_02 using 3:($6):($7) with yerrorlines ls 104 pt 2 ps 1.5 lw 3 title 'Brass'

####################################################################################################

set lmargin screen 0.296667
set rmargin screen 0.553333
unset key
 
####################################################################################################

set label 31 at graph 0.02,0.915 '(b) 0.5wt.\%' front

set xlabel '' offset 0,0.4
set xrange [6E-10:4E-8]
 
set ylabel '' offset 0.5,0
set format y ''
set mytics 2

plot \
al_05 using 3:($6):($7) with yerrorlines ls 101 pt 2 ps 1.5 lw 3 title 'aluminum',\
alumina_05 using 3:($6):($7) with yerrorlines ls 102 pt 2 ps 1.5 lw 3 title 'alumina',\
stainless_05 using 3:($6):($7) with yerrorlines ls 103 pt 2 ps 1.5 lw 3 title 'stainless',\
brass_05 using 3:($6):($7) with yerrorlines ls 104 pt 2 ps 1.5 lw 3 title 'brass'

####################################################################################################

set lmargin screen 0.573333
set rmargin screen 0.83
 
####################################################################################################

set label 31 at graph 0.02,0.915 '(c) 0.7wt.\%' front

set xlabel '' offset 0,0.4
set xrange [1E-10:1.5E-8]

set ylabel '' offset 0.5,0
set mytics 2

plot \
al_07 using 3:($6):($7) with yerrorlines ls 101 pt 2 ps 1.5 lw 3 title 'aluminum',\
alumina_07 using 3:($6):($7) with yerrorlines ls 102 pt 2 ps 1.5 lw 3 title 'alumina',\
stainless_07 using 3:($6):($7) with yerrorlines ls 103 pt 2 ps 1.5 lw 3 title 'stainless',\
brass_07 using 3:($6):($7) with yerrorlines ls 104 pt 2 ps 1.5 lw 3 title 'brass'

####################################################################################################
 
set lmargin screen 0.02
set rmargin screen 0.276667

set tmargin screen 0.46
set bmargin screen 0

####################################################################################################

set label 31 at graph 0.02,0.915 '(d) 1.0wt.\%' front

set xrange [8E-11:1E-8]
 
set ylabel '{\Large $ U_\text{on}/U_\text{off} \displaystyle [$\SI{}{-}$]$}' offset 0.5,0
set format y '$%.1f$'
set mytics 2
 
plot \
al_10 using 3:($6):($7) with yerrorlines ls 101 pt 2 ps 1.5 lw 3 title 'aluminum',\
alumina_10 using 3:($6):($7) with yerrorlines ls 102 pt 2 ps 1.5 lw 3 title 'alumina',\
stainless_10 using 3:($6):($7) with yerrorlines ls 103 pt 2 ps 1.5 lw 3 title 'stainless',\
brass_10 using 3:($6):($7) with yerrorlines ls 104 pt 2 ps 1.5 lw 3 title 'brass'

####################################################################################################
 
set lmargin screen 0.296667
set rmargin screen 0.553333
 
####################################################################################################

set label 31 at graph 0.02,0.915 '(e) 1.3wt.\%' front

set xlabel '{\Large $\left(\Delta\rho\right)^{\frac{n-1}{n}}$ [$($kg/m$^3)^{\frac{n-1}{n}}$]}' offset 0,0
set xrange [1.5E-11:1E-8]

set ylabel '' offset 0.5,0
set format y ''
set mytics 2
 
plot \
al_13 using 3:($6):($7) with yerrorlines ls 101 pt 2 ps 1.5 lw 3 title 'aluminum',\
alumina_13 using 3:($6):($7) with yerrorlines ls 102 pt 2 ps 1.5 lw 3 title 'alumina',\
stainless_13 using 3:($6):($7) with yerrorlines ls 103 pt 2 ps 1.5 lw 3 title 'stainless',\
brass_13 using 3:($6):($7) with yerrorlines ls 104 pt 2 ps 1.5 lw 3 title 'brass'

####################################################################################################
 
set lmargin screen 0.573333
set rmargin screen 0.83
 
####################################################################################################
 
set key width 0.5 box opaque spacing 1.1 samplen 1 Left reverse
set key at screen 0.75,0.15
unset key
 
####################################################################################################

set label 31 at graph 0.02,0.915 '(f) 1.5wt.\%' front

set xrange [1.5E-11:1E-9]
set xlabel '' offset 0,0.4

 
set ylabel '' offset 0.5,0
 
plot \
alumina_15 using 3:($6):($7) with yerrorlines ls 102 pt 2 ps 1.5 lw 3 title 'alumina',\
stainless_15 using 3:($6):($7) with yerrorlines ls 103 pt 2 ps 1.5 lw 3 title 'stainless',\
brass_15 using 3:($6):($7) with yerrorlines ls 104 pt 2 ps 1.5 lw 3 title 'brass'

unset multiplot
reset