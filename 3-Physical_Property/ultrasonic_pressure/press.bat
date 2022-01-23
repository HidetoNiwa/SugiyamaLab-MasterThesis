setlocal enabledelayedexpansion
@echo off

set fname=%~n0

gnuplot -e "fname='%fname%'" %fname%.plt
platex %fname%.tex
dvips %fname%.dvi -E -o %fname%.eps
magick -density 600 -units PixelsPerInch %fname%.eps %fname%.png
move /y ./%fname%.eps ../%fname%.eps
del *.aux *.log *.dvi *-inc.eps
del %fname%.tex
%fname%.png
