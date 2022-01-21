set terminal epslatex standalone header \
" \
\\usepackage{amssymb, amsmath, bm}\n\
\\usepackage{siunitx}\n \
"
set terminal epslatex size 3.5, 3 standalone color solid 9
 
set encoding utf8
set datafile separator ','

set tics front 
set border front
set border lw 4
  
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

set size ratio 0.8
 
####################################################################################################
 
set lmargin screen 0
set rmargin screen 1

set tmargin screen 1
set bmargin screen 0
 
####################################################################################################
 
set key width 0.5 box opaque spacing 1.1 samplen 1 Left reverse
set key at screen 1,0.13
unset key
 
####################################################################################################

set logscale xy

set format x '$%g$'
set xlabel '{\Large $\displaystyle \frac{\mu_{U}}{\mu_{ABL}}\cdot \frac{\delta}{a}$ [$\SI{}{-}$]}' offset 0,-0.5
set xrange [0.005:10]
set xtics 10
set mxtics 10
 
set ylabel '{\Large $\displaystyle \tau_\text{U}/\tau_\text{0}$ [$\SI{}{-}$]}' offset 0.5,0
set format y '$%g$'
set yrange [0.1:100]
set ytics 10 offset 0,0
set mytics 10

set pm3d interpolate 100,100
set cbrange[1:1.2]
set cbtics 0.1
set cblabel '$U_{on}/U_{off}$'

set isosamples 2,2

plot \
iwamuro using 2:1:4 with p lc palette pt 1 ps 2 lw 6 title 'iwamuro',\
al_02 using 3:2:5 with p lc palette pt 1 ps 2 lw 6 title '',\
al_05 using 3:2:5 with p lc palette pt 1 ps 2 lw 6 title '',\
al_07 using 3:2:5 with p lc palette pt 1 ps 2 lw 6 title '',\
al_10 using 3:2:5 with p lc palette pt 1 ps 2 lw 6 title '',\
al_13 using 3:2:5 with p lc palette pt 1 ps 2 lw 6 title '',\
alumina_02 using 3:2:5 with p lc palette  pt 1 ps 2 lw 6 title '',\
alumina_05 using 3:2:5 with p lc palette  pt 1 ps 2 lw 6 title '',\
alumina_07 using 3:2:5 with p lc palette  pt 1 ps 2 lw 6 title '',\
alumina_10 using 3:2:5 with p lc palette  pt 1 ps 2 lw 6 title '',\
alumina_13 using 3:2:5 with p lc palette  pt 1 ps 2 lw 6 title '',\
alumina_15 using 3:2:5 with p lc palette  pt 1 ps 2 lw 6 title '',\
stainless_02 using 3:2:5 with p lc palette  pt 1 ps 2 lw 6 title '',\
stainless_05 using 3:2:5 with p lc palette  pt 1 ps 2 lw 6 title '',\
stainless_07 using 3:2:5 with p lc palette  pt 1 ps 2 lw 6 title '',\
stainless_10 using 3:2:5 with p lc palette  pt 1 ps 2 lw 6 title '',\
stainless_13 using 3:2:5 with p lc palette  pt 1 ps 2 lw 6 title '',\
stainless_15 using 3:2:5 with p lc palette  pt 1 ps 2 lw 6 title '',\
brass_02 using 3:2:5 with p lc palette  pt 1 ps 2 lw 6 title '',\
brass_05 using 3:2:5 with p lc palette  pt 1 ps 2 lw 6 title '',\
brass_07 using 3:2:5 with p lc palette  pt 1 ps 2 lw 6 title '',\
brass_10 using 3:2:5 with p lc palette  pt 1 ps 2 lw 6 title '',\
brass_13 using 3:2:5 with p lc palette  pt 1 ps 2 lw 6 title '',\
brass_15 using 3:2:5 with p lc palette  pt 1 ps 2 lw 6 title '',\
d8 using 3:2:5 with p lc palette pt 1 ps 2 lw 6 title '',\
d10 using 3:2:5 with p lc palette pt 1 ps 2 lw 6 title '',\
d11 using 3:2:5 with p lc palette pt 1 ps 2 lw 6 title '',\
d12 using 3:2:5 with p lc palette pt 1 ps 2 lw 6 title '',\
d13 using 3:2:5 with p lc palette pt 1 ps 2 lw 6 title '',\
d14 using 3:2:5 with p lc palette pt 1 ps 2 lw 6 title '',\
d15 using 3:2:5 with p lc palette pt 1 ps 2 lw 6 title '',\
d20 using 3:2:5 with p lc palette pt 1 ps 2 lw 6 title '',\

unset multiplot
reset