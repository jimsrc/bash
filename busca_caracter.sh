#
# Script para buscar caracteres dentro de
# cierto tipo de archivos.
#
# Ejecutar como /home/..ruta../busca_caracter.sh $1 $2
# donde:
# $1 = "*.file_type"
# $2 = "string_to_search"
#
find -ipath "$1" -exec grep -n --ignore-case --color=auto -H "$2" {} \;
# NOTAS:
# --ignore-case : ignore case-sensitive
# -H		: Print the file name for each match.
