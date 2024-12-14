set MAX=16
set MIN=4
echo clear > plot.gpi
echo reset >> plot.gpi
echo set terminal gif animate delay 15 >> plot.gpi
echo set output "animate.gif" >> plot.gpi
echo set isosamples 100 >> plot.gpi
echo set hidden3d >> plot.gpi
echo set xlabel "x" >> plot.gpi
echo set ylabel "y" >> plot.gpi
echo set zlabel "z=F" >> plot.gpi
echo unset key >> plot.gpi
echo set xrange[0:6.2831853072] >> plot.gpi
echo set yrange[0:6.2831853072] >> plot.gpi
echo set zrange[*:*] >> plot.gpi
echo set surface >> plot.gpi
echo set contour base >> plot.gpi
echo set view 55,28,1.0,1.0 >> plot.gpi
echo set cntrparam levels auto 12 >> plot.gpi
rem echo set dgrid3d >> plot.gpi
echo set pm3d >> plot.gpi
for /L %%i in (%MIN%,1,%MAX%) do echo splot 'data%%i' w l >> plot.gpi

