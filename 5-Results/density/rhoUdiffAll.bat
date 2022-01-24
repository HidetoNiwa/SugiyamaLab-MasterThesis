setlocal enabledelayedexpansion
@echo off
 
set fname=rhoUdiffAll
gnuplot -e "fname='%fname%'" %fname%.plt

platex %fname%.tex
dvips -E %fname%.dvi -o %fname%.eps
magick -density 600 -units PixelsPerInch %fname%.eps %fname%.png
magick -alpha off %fname%.png %fname%.png
move /y ./%fname%.eps ../rhoUdiffAll.eps
del *.aux *.log *.dvi *-inc.eps
del %fname%.tex
%fname%.png
