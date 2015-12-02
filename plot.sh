#
# $1: archivo a plotear
# $2: using (por ej. "u 1:2")
#
watch -n 1 'gnuplot -e "set terminal dumb;p \"'$1'\" '$2' p "A""'
