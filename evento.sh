##
# Script q llama a otro script q construye un gnuplot_script q 
# plotea cualquier parametro en funcion de nombre del evento.
#
# Argumentos:
# $1: parametro "@algo" [char]
# $2: ylabel [char]
# $3: filename.sh [char]
#
cd /home/jim/ASOC_ICME-FD/correlaciones/ploteos/caracterizacion_de_eventos/evento_vs_dummy
#
./evento_vs_dummy.sh "$1" "$2" "$3"
#
##
