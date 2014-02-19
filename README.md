ab-gnuplot
==========

Webserver bencmark using ab and gnuplot

## Prepare data sample for further tests

Go to the webfolder and generate the data sample

  dd if=/dev/zero of=test100k.bin bs=102400 count=1

## Make tests

  bash test100k.sh http://www.example.com/test100k.bin

## Ressources

* http://www.bradlanders.com/2013/04/15/apache-bench-and-gnuplot-youre-probably-doing-it-wrong/
* https://forums.cpanel.net/f402/using-apache-ab-benchmarking-gnuplot-graphing-275542.html
* http://blog.secaserver.com/2012/03/web-server-benchmarking-apache-benchmark/
* http://www.kutukupret.com/2011/05/10/graphing-apachebench-results-using-gnuplot/
* http://blog.rajatpandit.com/2011/08/21/apache-bench-for-benchmarking-web-servers/
