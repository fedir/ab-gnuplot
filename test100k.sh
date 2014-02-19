for concurency in 1 10 20 50 100
do
	ab -n 100 -c $concurency -g data/test100k-$concurency.dat $1
done
gnuplot test100kLinear.p
gnuplot test100kTimeline.p
