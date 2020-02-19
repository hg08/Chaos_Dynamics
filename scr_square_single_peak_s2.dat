#=======
#setting
#=======
load '~/bin/hbacf_template.gnuplot'
set output "x-mu_plot_s2.eps"
set size square 1.15, 1.5

#set logscale y
set key at 1.253, -0.0
set xrange [1.76 : 1.86]
set yrange [-1.0 : 1.0]  
set xtics 0.02
set ytics 0.5 
#set mytics 2

set origin 0, 0 
set size 1.15, 1.5
set border 1+2+4+8
set xlabel "{/Symbol m" font "Sans, 36"
set ylabel "x" font "Sans,36"
plot "trajectory_x.dat" u 2:3 w p pt 7 ps 0.4 title "x_{n+1} = 1-{/Symbol m}x@_n^2"

set output 
