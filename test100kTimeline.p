set terminal png size 500,500
set size 1, 1
set output "img/test100kTimeline.png"
set title "Apache bench"

# Where to place the legend/key
set key left top

# Draw gridlines oriented on the y axis
set grid y

# Specify that the x-series data is time data
set xdata time
# Specify the *input* format of the time data
set timefmt "%s"
# Specify the *output* format for the x-axis tick labels
set format x "%S"
# Label the x-axis
set xlabel 'seconds'
# Label the y-axis
set ylabel "response time (ms)"
# Tell gnuplot to use tabs as the delimiter instead of spaces (default)
set datafile separator '\t'

plot "data/test100k-1.dat" every ::2 using 2:5 title 'ab -n 100 -c 1' with points, \
     "data/test100k-10.dat" every ::2 using 2:5 title 'ab -n 100 -c 10' with points, \
     "data/test100k-20.dat" every ::2 using 2:5 title 'ab -n 100 -c 20' with points, \
     "data/test100k-50.dat" every ::2 using 2:5 title 'ab -n 100 -c 50' with points,\
     "data/test100k-100.dat" every ::2 using 2:5 title 'ab -n 100 -c 100' with points
exit
