setlocal enabledelayedexpansion
@echo off
 
set fname=concentrationUdiff_each_ppt
gnuplot -e "fname='%fname%'" %fname%.plt

platex %fname%.tex
dvips -E %fname%.dvi -o %fname%.eps
magick -density 600 -units PixelsPerInch %fname%.eps %fname%.png
magick -alpha off %fname%.png %fname%.png
move /y ./%fname%.eps ../%fname%.eps
del *.aux *.log *.dvi *-inc.eps
del %fname%.tex
%fname%.png
