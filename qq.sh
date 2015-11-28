#
# Script para buscar archivos y que tambien enlista las
# propiedades de dichos archivos (fecha de modificacion, tamaño,
# permisos, etc)
#
# Argumentos:
# $1 : cadena patron para el nombre de archivo q se busca
#
ls -lh --color=auto `find -ipath "$1"`
