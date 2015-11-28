#
# script para saber el "utc_second" correspondientes 
# a una fecha dada
#
# se nececita 1 argumento:
# $1 : "DD MM AAAA HH:MM:SS"
#
utcsec=$1

date --date "$1" -u +%s
