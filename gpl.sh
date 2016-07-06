#
# plotea en termina usando gnuplot
# (ploteos 'online')
#
file_name=$1
usin=$2
#
watch -n 1 'gnuplot -e "set terminal dumb;p \"'$file_name'\" '$usin'"'
