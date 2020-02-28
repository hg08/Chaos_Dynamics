#=======
#setting
#=======
load '~/bin/hbacf_template.gnuplot'
set output "x-mu_plot.eps"
set size square 1.15, 1.5

#set logscale y
set key at 2.99, -0.5
set xrange [1.0 : 2.5]
set yrange [-3.0 : 3.0]  
set xtics 0.5
set ytics 1 
#set mytics 2

set origin 0, 0 
set size 1.15, 1.5
set border 1+2+4+8
set xlabel "{/Symbol m" font "Sans, 36"
set ylabel "x" font "Sans,36"
#plot "traj_x.dat" u 2:3 w p pt 7 ps 0.4 title "x_{n+1} = {/Symbol l}(x_n+1)"
plot "traj_x.dat" u 2:3 w p pt 7 ps 0.4 notitle 

set output 
