##
#
# Script para buscar archivos por tipo y por fecha.
# Se debe indicar la cantidad de dias de su modificación, por ej:
# +3 : hace mas de 3 dias
# 4  : hace exactamente 4 dias
# -2 : hace menos de 2 dias
# Argumentos:
# $1 : *patron*.ext [string]
# $2 : nro de dias [float or int]
#
find -name "$1" -type f -ctime "$2"
#
##
