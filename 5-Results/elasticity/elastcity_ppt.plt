set terminal epslatex standalone header \
" \
\\usepackage{amssymb, amsmath, bm}\n\
\\usepackage{siunitx}\n \
"
set terminal epslatex size 5, 6 standalone color solid 9
 
set encoding utf8
set datafile separator ','

set tics front 
set border front
set border lw 3 
set size ratio 1
  
if (!exists("fname")) fname='test'

oname = sprintf("%s.tex", fname)
set output oname

d8 = sprintf('../diameter/data/8.csv')
d10 = sprintf('../diameter/data/10.csv')
d11 = sprintf('../diameter/data/11.csv')
d12 = sprintf('../diameter/data/12.csv')
d13 = sprintf('../diameter/data/13.csv')
d14 = sprintf('../diameter/data/14.csv')
d15 = sprintf('../diameter/data/15.csv')
d20 = sprintf('../diameter/data/20.csv')

d05_05 = sprintf('../diameter-0.5/data/5.csv')
d10_05 = sprintf('../diameter-0.5/data/10.csv')
d15_05 = sprintf('../diameter-0.5/data/15.csv')
d20_05 = sprintf('../diameter-0.5/data/20.csv')

d05_02 = sprintf('../diameter-0.2-1.3/data/0.2-5.csv')
d08_02 = sprintf('../diameter-0.2-1.3/data/0.2-8.csv')
d10_02 = sprintf('../diameter-0.2-1.3/data/0.2-10.csv')

d8_13 = sprintf('../diameter-0.2-1.3/data/1.3-8.csv')
d10_13 = sprintf('../diameter-0.2-1.3/data/1.3-10.csv')
d15_13 = sprintf('../diameter-0.2-1.3/data/1.3-15.csv')
d20_13 = sprintf('../diameter-0.2-1.3/data/1.3-20.csv')

al_02 = sprintf('../viscosity/data/al/0.2.csv')
al_05 = sprintf('../viscosity/data/al/0.5.csv')
al_07 = sprintf('../viscosity/data/al/0.7.csv')
al_10 = sprintf('../viscosity/data/al/1.0.csv')
al_13 = sprintf('../viscosity/data/al/1.3.csv')

alumina_02 = sprintf('../viscosity/data/alumina/0.2.csv')
alumina_05 = sprintf('../viscosity/data/alumina/0.5.csv')
alumina_07 = sprintf('../viscosity/data/alumina/0.7.csv')
alumina_10 = sprintf('../viscosity/data/alumina/1.0.csv')
alumina_13 = sprintf('../viscosity/data/alumina/1.3.csv')
alumina_15 = sprintf('../viscosity/data/alumina/1.5.csv')

stainless_02 = sprintf('../viscosity/data/stainless/0.2.csv')
stainless_05 = sprintf('../viscosity/data/stainless/0.5.csv')
stainless_07 = sprintf('../viscosity/data/stainless/0.7.csv')
stainless_10 = sprintf('../viscosity/data/stainless/1.0.csv')
stainless_13 = sprintf('../viscosity/data/stainless/1.3.csv')
stainless_15 = sprintf('../viscosity/data/stainless/1.5.csv')

brass_02 = sprintf('../viscosity/data/brass/0.2.csv')
brass_05 = sprintf('../viscosity/data/brass/0.5.csv')
brass_07 = sprintf('../viscosity/data/brass/0.7.csv')
brass_10 = sprintf('../viscosity/data/brass/1.0.csv')
brass_13 = sprintf('../viscosity/data/brass/1.3.csv')
brass_15 = sprintf('../viscosity/data/brass/1.5.csv')

iwamuro = sprintf('./iwamuro/iwamuro.csv')

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

set style line 301 lt 1 lw 4 ps 2 lc rgb '#d894ff'
set style line 302 lt 1 lw 4 ps 2 lc rgb '#cb70ff'
set style line 303 lt 1 lw 4 ps 2 lc rgb '#be4dff'
set style line 304 lt 1 lw 4 ps 2 lc rgb '#b029ff'
set style line 305 lt 1 lw 4 ps 2 lc rgb '#a305ff'
set style line 306 lt 1 lw 4 ps 2 lc rgb '#8e00e0'
set style line 307 lt 1 lw 4 ps 2 lc rgb '#7800bd'
set style line 308 lt 1 lw 4 ps 2 lc rgb '#610099'

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

set tmargin screen 0.59
set bmargin screen 0.25
####################################################################################################
 
set key width 0.5 box opaque spacing 1.1 samplen 1 Left reverse
set key at screen 1,0.13
unset key
 
####################################################################################################
set label 31 at graph 0.02,0.95 '(c)' front

set logscale x

set format x '$%g$'
set xlabel '{\Large $\displaystyle \frac{\tau_{U}}{\tau_{0}} $ [$\SI{}{-}$]}' offset 0,0.5
set xrange [0.1:70]
set xtics 10
set mxtics 10
 
set ylabel '{\Large $\displaystyle U_\text{on}/U_\text{off}[$\SI{}{-}$]$}' offset 0.5,0
set format y '$%g$'
set yrange [0.8:1.6]
set ytics 0.2 offset 0,0
set mytics 2
 
plot \
iwamuro using 1:4:5 with yerrorbars  ls 111 pt  6 ps 1.6 lw 4 title 'iwamuro',\
al_02 using 2:5:6 with yerrorbars ls 101 pt 2 ps 1.6 lw 4 title '',\
al_05 using 2:5:6 with yerrorbars ls 101 pt 6 ps 1.6 lw 4 title '',\
al_07 using 2:5:6 with yerrorbars ls 101 pt 4 ps 1.6 lw 4 title '',\
al_10 using 2:5:6 with yerrorbars ls 101 pt 8 ps 1.6 lw 4 title '',\
al_13 using 2:5:6 with yerrorbars ls 101 pt 10 ps 1.6 lw 4 title '',\
alumina_02 using 2:5:6 with yerrorbars ls 102 pt 2 ps 1.6 lw 4 title '',\
alumina_05 using 2:5:6 with yerrorbars ls 102 pt 6 ps 1.6 lw 4 title '',\
alumina_07 using 2:5:6 with yerrorbars ls 102 pt 4 ps 1.6 lw 4 title '',\
alumina_10 using 2:5:6 with yerrorbars ls 102 pt 8 ps 1.6 lw 4 title '',\
alumina_13 using 2:5:6 with yerrorbars ls 102 pt 10 ps 1.6 lw 4 title '',\
alumina_15 using 2:5:6 with yerrorbars ls 102 pt 12 ps 1.6 lw 4 title '',\
stainless_02 using 2:5:6 with yerrorbars ls 103 pt 2 ps 1.6 lw 4 title '',\
stainless_05 using 2:5:6 with yerrorbars ls 103 pt 6 ps 1.6 lw 4 title '',\
stainless_07 using 2:5:6 with yerrorbars ls 103 pt 4 ps 1.6 lw 4 title '',\
stainless_10 using 2:5:6 with yerrorbars ls 103 pt 8 ps 1.6 lw 4 title '',\
stainless_13 using 2:5:6 with yerrorbars ls 103 pt 10 ps 1.6 lw 4 title '',\
stainless_15 using 2:5:6 with yerrorbars ls 103 pt 12 ps 1.6 lw 4 title '',\
brass_02 using 2:5:6 with yerrorbars ls 104 pt 2 ps 1.6 lw 4 title '',\
brass_05 using 2:5:6 with yerrorbars ls 104 pt 6 ps 1.6 lw 4 title '',\
brass_07 using 2:5:6 with yerrorbars ls 104 pt 4 ps 1.6 lw 4 title '',\
brass_10 using 2:5:6 with yerrorbars ls 104 pt 8 ps 1.6 lw 4 title '',\
brass_13 using 2:5:6 with yerrorbars ls 104 pt 10 ps 1.6 lw 4 title '',\
brass_15 using 2:5:6 with yerrorbars ls 104 pt 12 ps 1.6 lw 4 title '',\
d8 using 2:5:6 with yerrorbars ls 301 pt 14 ps 1.6 lw 4 title '',\
d10 using 2:5:6 with yerrorbars ls 302 pt 14 ps 1.6 lw 4 title '',\
d11 using 2:5:6 with yerrorbars ls 302 pt 14 ps 1.6 lw 4 title '',\
d12 using 2:5:6 with yerrorbars ls 304 pt  14 ps 1.6 lw 4 title '',\
d13 using 2:5:6 with yerrorbars ls 305 pt 14 ps 1.6 lw 4 title '',\
d14 using 2:5:6 with yerrorbars ls 306 pt 14 ps 1.6 lw 4 title '',\
d15 using 2:5:6 with yerrorbars ls 307 pt 14 ps 1.6 lw 4 title '',\
d20 using 2:5:6 with yerrorbars ls 308 pt 14 ps 1.6 lw 4 title '',\
d05_05 using 2:7:8 with yerrorbars ls 301 pt 6 ps 1.6 lw 4 title '',\
d10_05 using 2:7:8 with yerrorbars ls 302 pt 6 ps 1.6 lw 4 title '',\
d15_05 using 2:7:8 with yerrorbars ls 307 pt 6 ps 1.6 lw 4 title '',\
d20_05 using 2:7:8 with yerrorbars ls 308 pt 6 ps 1.6 lw 4 title '',\
d05_02 using 2:5:6 with yerrorbars ls 301 pt 2 ps 1.6 lw 4 title '',\
d08_02 using 2:5:6 with yerrorbars ls 302 pt 2 ps 1.6 lw 4 title '',\
d10_02 using 2:5:6 with yerrorbars ls 303 pt 2 ps 1.6 lw 4 title '',\
d8_13 using 2:5:6 with yerrorbars ls 301 pt 10 ps 1.6 lw 4 title '',\
d10_13 using 2:5:6 with yerrorbars ls 302 pt 10 ps 1.6 lw 4 title '',\
d15_13 using 2:5:6 with yerrorbars ls 307 pt 10 ps 1.6 lw 4 title '',\
d20_13 using 2:5:6 with yerrorbars ls 308 pt 10 ps 1.6 lw 4 title '',\

set lmargin screen 0.51
set rmargin screen 1.0

set label 31 at graph 0.02,0.95 '(d)' front

set xrange [0.1:3]

set ylabel '{\Large $\displaystyle U_\text{on}/U_\text{off}[$\SI{}{-}$]$}' offset 1,0
set format y '$%g$'
set yrange [0.8:1.6]
set ytics 0.2 offset 0,0
set mytics 2

plot \
al_02 using 2:5:6 with yerrorbars ls 101 pt 2 ps 1.6 lw 4 title '',\
al_05 using 2:5:6 with yerrorbars ls 101 pt 6 ps 1.6 lw 4 title '',\
al_07 using 2:5:6 with yerrorbars ls 101 pt 4 ps 1.6 lw 4 title '',\
al_10 using 2:5:6 with yerrorbars ls 101 pt 8 ps 1.6 lw 4 title '',\
al_13 using 2:5:6 with yerrorbars ls 101 pt 10 ps 1.6 lw 4 title '',\
alumina_02 using 2:5:6 with yerrorbars ls 102 pt 2 ps 1.6 lw 4 title '',\
alumina_05 using 2:5:6 with yerrorbars ls 102 pt 6 ps 1.6 lw 4 title '',\
alumina_07 using 2:5:6 with yerrorbars ls 102 pt 4 ps 1.6 lw 4 title '',\
alumina_10 using 2:5:6 with yerrorbars ls 102 pt 8 ps 1.6 lw 4 title '',\
alumina_13 using 2:5:6 with yerrorbars ls 102 pt 10 ps 1.6 lw 4 title '',\
alumina_15 using 2:5:6 with yerrorbars ls 102 pt 12 ps 1.6 lw 4 title '',\
stainless_02 using 2:5:6 with yerrorbars ls 103 pt 2 ps 1.6 lw 4 title '',\
stainless_05 using 2:5:6 with yerrorbars ls 103 pt 6 ps 1.6 lw 4 title '',\
stainless_07 using 2:5:6 with yerrorbars ls 103 pt 4 ps 1.6 lw 4 title '',\
stainless_10 using 2:5:6 with yerrorbars ls 103 pt 8 ps 1.6 lw 4 title '',\
stainless_13 using 2:5:6 with yerrorbars ls 103 pt 10 ps 1.6 lw 4 title '',\
stainless_15 using 2:5:6 with yerrorbars ls 103 pt 12 ps 1.6 lw 4 title '',\
brass_02 using 2:5:6 with yerrorbars ls 104 pt 2 ps 1.6 lw 4 title '',\
brass_05 using 2:5:6 with yerrorbars ls 104 pt 6 ps 1.6 lw 4 title '',\
brass_07 using 2:5:6 with yerrorbars ls 104 pt 4 ps 1.6 lw 4 title '',\
brass_10 using 2:5:6 with yerrorbars ls 104 pt 8 ps 1.6 lw 4 title '',\
brass_13 using 2:5:6 with yerrorbars ls 104 pt 10 ps 1.6 lw 4 title '',\
brass_15 using 2:5:6 with yerrorbars ls 104 pt 12 ps 1.6 lw 4 title '',\
d8 using 2:5:6 with yerrorbars ls 301 pt 14 ps 1.6 lw 4 title '',\
d10 using 2:5:6 with yerrorbars ls 302 pt 14 ps 1.6 lw 4 title '',\
d11 using 2:5:6 with yerrorbars ls 302 pt 14 ps 1.6 lw 4 title '',\
d12 using 2:5:6 with yerrorbars ls 304 pt  14 ps 1.6 lw 4 title '',\
d13 using 2:5:6 with yerrorbars ls 305 pt 14 ps 1.6 lw 4 title '',\
d14 using 2:5:6 with yerrorbars ls 306 pt 14 ps 1.6 lw 4 title '',\
d15 using 2:5:6 with yerrorbars ls 307 pt 14 ps 1.6 lw 4 title '',\
d20 using 2:5:6 with yerrorbars ls 308 pt 14 ps 1.6 lw 4 title '',\
d05_05 using 2:7:8 with yerrorbars ls 301 pt 6 ps 1.6 lw 4 title '',\
d10_05 using 2:7:8 with yerrorbars ls 302 pt 6 ps 1.6 lw 4 title '',\
d15_05 using 2:7:8 with yerrorbars ls 307 pt 6 ps 1.6 lw 4 title '',\
d20_05 using 2:7:8 with yerrorbars ls 308 pt 6 ps 1.6 lw 4 title '',\
d05_02 using 2:5:6 with yerrorbars ls 301 pt 2 ps 1.6 lw 4 title '',\
d08_02 using 2:5:6 with yerrorbars ls 302 pt 2 ps 1.6 lw 4 title '',\
d10_02 using 2:5:6 with yerrorbars ls 302 pt 2 ps 1.6 lw 4 title '',\
d8_13 using 2:5:6 with yerrorbars ls 301 pt 10 ps 1.6 lw 4 title '',\
d10_13 using 2:5:6 with yerrorbars ls 302 pt 10 ps 1.6 lw 4 title '',\
d15_13 using 2:5:6 with yerrorbars ls 307 pt 10 ps 1.6 lw 4 title '',\
d20_13 using 2:5:6 with yerrorbars ls 308 pt 10 ps 1.6 lw 4 title '',\

set lmargin screen 0
set rmargin screen 0.49

set tmargin screen 1
set bmargin screen 0.66

set label 31 at graph 0.02,0.95 '(a)' front

set xrange [1:2000]

set logscale y

set xlabel '{\Large $\displaystyle U_\text{off}[$\SI{}{mm/s}$]$}' offset 0,0.5
set ylabel '{\Large $\displaystyle \frac{\tau_{U}}{\tau_{0}} $ [$\SI{}{-}$]}' offset 0,0
set format y '$%g$'
set format x '$10^{%L}$'
set yrange [0.1:100]
set ytics 10 offset 0,0
set mytics 10

set xtics 10 offset 0,0

plot \
iwamuro using ($6)*1000:1 with points ls 111 pt  6 ps 1.6 lw 4 title 'iwamuro',\
al_02 using ($7)*1000:2:($8)*1000 with xerrorbars ls 101 pt 2 ps 1.6 lw 4 title '',\
al_05 using ($7)*1000:2:($8)*1000 with xerrorbars ls 101 pt 6 ps 1.6 lw 4 title '',\
al_07 using ($7)*1000:2:($8)*1000 with xerrorbars ls 101 pt 4 ps 1.6 lw 4 title '',\
al_10 using ($7)*1000:2:($8)*1000 with xerrorbars ls 101 pt 8 ps 1.6 lw 4 title '',\
al_13 using ($7)*1000:2:($8)*1000 with xerrorbars ls 101 pt 10 ps 1.6 lw 4 title '',\
alumina_02 using ($7)*1000:2:($8)*1000 with xerrorbars ls 102 pt 2 ps 1.6 lw 4 title '',\
alumina_05 using ($7)*1000:2:($8)*1000 with xerrorbars ls 102 pt 6 ps 1.6 lw 4 title '',\
alumina_07 using ($7)*1000:2:($8)*1000 with xerrorbars ls 102 pt 4 ps 1.6 lw 4 title '',\
alumina_10 using ($7)*1000:2:($8)*1000 with xerrorbars ls 102 pt 8 ps 1.6 lw 4 title '',\
alumina_13 using ($7)*1000:2:($8)*1000 with xerrorbars ls 102 pt 10 ps 1.6 lw 4 title '',\
alumina_15 using ($7)*1000:2:($8)*1000 with xerrorbars ls 102 pt 12 ps 1.6 lw 4 title '',\
stainless_02 using ($7)*1000:2:($8)*1000 with xerrorbars ls 103 pt 2 ps 1.6 lw 4 title '',\
stainless_05 using ($7)*1000:2:($8)*1000 with xerrorbars ls 103 pt 6 ps 1.6 lw 4 title '',\
stainless_07 using ($7)*1000:2:($8)*1000 with xerrorbars ls 103 pt 4 ps 1.6 lw 4 title '',\
stainless_10 using ($7)*1000:2:($8)*1000 with xerrorbars ls 103 pt 8 ps 1.6 lw 4 title '',\
stainless_13 using ($7)*1000:2:($8)*1000 with xerrorbars ls 103 pt 10 ps 1.6 lw 4 title '',\
stainless_15 using ($7)*1000:2:($8)*1000 with xerrorbars ls 103 pt 12 ps 1.6 lw 4 title '',\
brass_02 using ($7)*1000:2:($8)*1000 with xerrorbars ls 104 pt 2 ps 1.6 lw 4 title '',\
brass_05 using ($7)*1000:2:($8)*1000 with xerrorbars ls 104 pt 6 ps 1.6 lw 4 title '',\
brass_07 using ($7)*1000:2:($8)*1000 with xerrorbars ls 104 pt 4 ps 1.6 lw 4 title '',\
brass_10 using ($7)*1000:2:($8)*1000 with xerrorbars ls 104 pt 8 ps 1.6 lw 4 title '',\
brass_13 using ($7)*1000:2:($8)*1000 with xerrorbars ls 104 pt 10 ps 1.6 lw 4 title '',\
brass_15 using ($7)*1000:2:($8)*1000 with xerrorbars ls 104 pt 12 ps 1.6 lw 4 title '',\
d8 using ($7)*1000:2:($8)*1000 with xerrorbars ls 301 pt 14 ps 1.6 lw 4 title '',\
d10 using ($7)*1000:2:($8)*1000 with xerrorbars ls 302 pt 14 ps 1.6 lw 4 title '',\
d11 using ($7)*1000:2:($8)*1000 with xerrorbars ls 302 pt 14 ps 1.6 lw 4 title '',\
d12 using ($7)*1000:2:($8)*1000 with xerrorbars ls 304 pt  14 ps 1.6 lw 4 title '',\
d13 using ($7)*1000:2:($8)*1000 with xerrorbars ls 305 pt 14 ps 1.6 lw 4 title '',\
d14 using ($7)*1000:2:($8)*1000 with xerrorbars ls 306 pt 14 ps 1.6 lw 4 title '',\
d15 using ($7)*1000:2:($8)*1000 with xerrorbars ls 307 pt 14 ps 1.6 lw 4 title '',\
d20 using ($7)*1000:2:($8)*1000 with xerrorbars ls 308 pt 14 ps 1.6 lw 4 title '',\
d05_05 using 5:2:6 with xerrorbars ls 301 pt 6 ps 1.6 lw 4 title '',\
d10_05 using 5:2:6 with xerrorbars ls 302 pt 6 ps 1.6 lw 4 title '',\
d15_05 using 5:2:6 with xerrorbars ls 307 pt 6 ps 1.6 lw 4 title '',\
d20_05 using 5:2:6 with xerrorbars ls 308 pt 6 ps 1.6 lw 4 title '',\
d05_02 using ($7):2:($8) with xerrorbars ls 301 pt 2 ps 1.6 lw 4 title '',\
d08_02 using ($7):2:($8) with xerrorbars ls 302 pt 2 ps 1.6 lw 4 title '',\
d10_02 using ($7)*1000:2:($8)*1000 with xerrorbars ls 303 pt 2 ps 1.6 lw 4 title '',\
d8_13 using ($7):2:($8) with xerrorbars ls 301 pt 10 ps 1.6 lw 4 title '',\
d10_13 using ($7)*1000:2:($8)*1000 with xerrorbars ls 302 pt 10 ps 1.6 lw 4 title '',\
d15_13 using ($7):2:($8) with xerrorbars ls 307 pt 10 ps 1.6 lw 4 title '',\
d20_13 using ($7):2:($8) with xerrorbars ls 308 pt 10 ps 1.6 lw 4 title '',\

set lmargin screen 0.51
set rmargin screen 1

set label 31 at graph 0.02,0.95 '(b)' front

set xrange [1:2000]

unset logscale y

set xlabel '{\Large $\displaystyle U_\text{off}[$\SI{}{mm/s}$]$}' offset 0,0.5
set format x '$10^{%L}$'
set mytics 10
set xtics 10 offset 0,0

set ylabel '{\Large $\displaystyle U_\text{on}/U_\text{off}[$\SI{}{-}$]$}' offset 1,0
set format y '$%g$'
set yrange [0.8:1.6]
set ytics 0.2 offset 0,0
set mytics 2

plot \
iwamuro using ($6)*1000:4:5 with yerrorbars ls 111 pt  6 ps 1.6 lw 4 title 'iwamuro',\
al_02 using ($7)*1000:5:($8)*1000:6 with xyerrorbars ls 101 pt 2 ps 1.6 lw 4 title '',\
al_05 using ($7)*1000:5:($8)*1000:6 with xyerrorbars ls 101 pt 6 ps 1.6 lw 4 title '',\
al_07 using ($7)*1000:5:($8)*1000:6 with xyerrorbars ls 101 pt 4 ps 1.6 lw 4 title '',\
al_10 using ($7)*1000:5:($8)*1000:6 with xyerrorbars ls 101 pt 8 ps 1.6 lw 4 title '',\
al_13 using ($7)*1000:5:($8)*1000:6 with xyerrorbars ls 101 pt 10 ps 1.6 lw 4 title '',\
alumina_02 using ($7)*1000:5:($8)*1000:6 with xyerrorbars ls 102 pt 2 ps 1.6 lw 4 title '',\
alumina_05 using ($7)*1000:5:($8)*1000:6 with xyerrorbars ls 102 pt 6 ps 1.6 lw 4 title '',\
alumina_07 using ($7)*1000:5:($8)*1000:6 with xyerrorbars ls 102 pt 4 ps 1.6 lw 4 title '',\
alumina_10 using ($7)*1000:5:($8)*1000:6 with xyerrorbars ls 102 pt 8 ps 1.6 lw 4 title '',\
alumina_13 using ($7)*1000:5:($8)*1000:6 with xyerrorbars ls 102 pt 10 ps 1.6 lw 4 title '',\
alumina_15 using ($7)*1000:5:($8)*1000:6 with xyerrorbars ls 102 pt 12 ps 1.6 lw 4 title '',\
stainless_02 using ($7)*1000:5:($8)*1000:6 with xyerrorbars ls 103 pt 2 ps 1.6 lw 4 title '',\
stainless_05 using ($7)*1000:5:($8)*1000:6 with xyerrorbars ls 103 pt 6 ps 1.6 lw 4 title '',\
stainless_07 using ($7)*1000:5:($8)*1000:6 with xyerrorbars ls 103 pt 4 ps 1.6 lw 4 title '',\
stainless_10 using ($7)*1000:5:($8)*1000:6 with xyerrorbars ls 103 pt 8 ps 1.6 lw 4 title '',\
stainless_13 using ($7)*1000:5:($8)*1000:6 with xyerrorbars ls 103 pt 10 ps 1.6 lw 4 title '',\
stainless_15 using ($7)*1000:5:($8)*1000:6 with xyerrorbars ls 103 pt 12 ps 1.6 lw 4 title '',\
brass_02 using ($7)*1000:5:($8)*1000:6 with xyerrorbars ls 104 pt 2 ps 1.6 lw 4 title '',\
brass_05 using ($7)*1000:5:($8)*1000:6 with xyerrorbars ls 104 pt 6 ps 1.6 lw 4 title '',\
brass_07 using ($7)*1000:5:($8)*1000:6 with xyerrorbars ls 104 pt 4 ps 1.6 lw 4 title '',\
brass_10 using ($7)*1000:5:($8)*1000:6 with xyerrorbars ls 104 pt 8 ps 1.6 lw 4 title '',\
brass_13 using ($7)*1000:5:($8)*1000:6 with xyerrorbars ls 104 pt 10 ps 1.6 lw 4 title '',\
brass_15 using ($7)*1000:5:($8)*1000:6 with xyerrorbars ls 104 pt 12 ps 1.6 lw 4 title '',\
d8 using ($7)*1000:5:($8)*1000:6 with xyerrorbars ls 301 pt 14 ps 1.6 lw 4 title '',\
d10 using ($7)*1000:5:($8)*1000:6 with xyerrorbars ls 302 pt 14 ps 1.6 lw 4 title '',\
d11 using ($7)*1000:5:($8)*1000:6 with xyerrorbars ls 302 pt 14 ps 1.6 lw 4 title '',\
d12 using ($7)*1000:5:($8)*1000:6 with xyerrorbars ls 304 pt  14 ps 1.6 lw 4 title '',\
d13 using ($7)*1000:5:($8)*1000:6 with xyerrorbars ls 305 pt 14 ps 1.6 lw 4 title '',\
d14 using ($7)*1000:5:($8)*1000:6 with xyerrorbars ls 306 pt 14 ps 1.6 lw 4 title '',\
d15 using ($7)*1000:5:($8)*1000:6 with xyerrorbars ls 307 pt 14 ps 1.6 lw 4 title '',\
d20 using ($7)*1000:5:($8)*1000:6 with xyerrorbars ls 308 pt 14 ps 1.6 lw 4 title '',\
d05_05 using 5:7:6:8 with xyerrorbars ls 301 pt 6 ps 1.6 lw 4 title '',\
d10_05 using 5:7:6:8 with xyerrorbars ls 302 pt 6 ps 1.6 lw 4 title '',\
d15_05 using 5:7:6:8 with xyerrorbars ls 307 pt 6 ps 1.6 lw 4 title '',\
d20_05 using 5:7:6:8 with xyerrorbars ls 308 pt 6 ps 1.6 lw 4 title '',\
d05_02 using ($7):5:($8):6 with xyerrorbars ls 301 pt 2 ps 1.6 lw 4 title '',\
d08_02 using ($7):5:($8):6 with xyerrorbars ls 302 pt 2 ps 1.6 lw 4 title '',\
d10_02 using ($7)*1000:5:($8)*1000:6 with xyerrorbars ls 303 pt 2 ps 1.6 lw 4 title '',\
d8_13 using ($7):5:($8):6 with xyerrorbars ls 301 pt 10 ps 1.6 lw 4 title '',\
d10_13 using ($7)*1000:5:($8)*1000:6 with xyerrorbars ls 302 pt 10 ps 1.6 lw 4 title '',\
d15_13 using ($7):5:($8):6 with xyerrorbars ls 307 pt 10 ps 1.6 lw 4 title '',\
d20_13 using ($7):5:($8):6 with xyerrorbars ls 308 pt 10 ps 1.6 lw 4 title '',\

unset multiplot
reset