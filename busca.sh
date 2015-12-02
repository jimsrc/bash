#!/bin/bash
#
# PROGRAMA PARA BUSCAR ARCHIVOS
#
# argumentos (uno solo):
# $1 : debe ser la cadena de caracteres a buscar
#
PAL=$1
#
# busco (marginando mayusculas/minusculas)
# dentro del presente directorio:
#
find -ipath $PAL
#
echo $PAL
