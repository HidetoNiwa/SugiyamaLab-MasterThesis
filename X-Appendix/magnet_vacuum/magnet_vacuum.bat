setlocal enabledelayedexpansion
@echo off
 
set fname=magnet_vacuum
gnuplot -e "fname='%fname%'" %fname%.plt
 
platex %fname%.tex
dvips %fname%.dvi -o %fname%.eps
magick -density 600 -units PixelsPerInch %fname%.eps %fname%.png
del *.aux *.log *.dvi *-inc.eps
del %fname%.tex
%fname%.png