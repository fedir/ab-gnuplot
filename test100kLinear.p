set terminal png size 500,500
set size 1, 1
set output "img/test100kLinear.png"
set title "Apache bench"
set grid y
set xlabel "request"
set ylabel "response time (ms)"
plot "data/test100k-1.dat" using 9 smooth sbezier with lines title "ab -n 100 -c 1", \
    "data/test100k-10.dat" using 9 smooth sbezier with lines title "ab -n 100 -c 10", \
    "data/test100k-20.dat" using 9 smooth sbezier with lines title "ab -n 100 -c 20", \
    "data/test100k-50.dat" using 9 smooth sbezier with lines title "ab -n 100 -c 50", \
    "data/test100k-100.dat" using 9 smooth sbezier with lines title "ab -n 100 -c 100"
