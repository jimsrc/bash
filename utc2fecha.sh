#
# script para saber la fecha correspondiente a un "utc_second"
#
# se nececita 1 argumento:
# $1 : [fecha en sgundos utc]
#
utcsec=$1

date --date "01 jan 1970 + $1sec" -u
