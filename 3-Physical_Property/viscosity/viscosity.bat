setlocal enabledelayedexpansion
@echo off

set fname=viscosity
gnuplot -e "fname='%fname%'" %fname%.plt

platex %fname%.tex
dvips %fname%.dvi -E -o %fname%.eps
magick -density 600 -units PixelsPerInch %fname%.eps %fname%.png
move /y ./%fname%.eps ../viscosity.eps
del *.aux *.dvi *-inc.eps
del %fname%.tex
%fname%.png
