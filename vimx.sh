#!/bin/bash
#--------------------------------------------------------
# usamos dferentes configuraciones VIM para c/tipo de 
# archivo :P 
# autor: jimmy  06/jul/2015
#--------------------------------------------------------
#exe=$1
#file=$2
file=`eval "echo \\\$$#"`   # el ultimo argumento sera el archivo (*)
CONF1=$HOME/.vimrc_i        # config 1 
CONF2=$HOME/.vimrc_ii       # config 2 (**)
#
# (**): tiene algunas cosas deshabilitadas respecto de la "config 1"
#

if [[ $file == *.py ]]; then
    $* -u $CONF2
    #$exe $file -u $CONF2    # para .py otra configuracion VIM
elif [[ $file == *shrc ]]; then
    $* -u $CONF2
    #$exe -u $CONF2 $file
else
    $* -u $CONF2 # para q abarque a los .py
    #$exe -u $CONF1  $file    # la de siempre fisa-vim (la misma de la web)
fi 
#
# NOTA (ultimo comentario al inicio): 
# - el simbolo $* es porque quiero considerar la posibilidad de que en 
#   consola pueda escribir "vim -S session_file" (en este caso no hay 
#   nombre de archivo. Solo el nombre de archivo de sesion). 
# - el argumento "-u $CONF1" q esta escrito al final SI hace efecto (ya 
#   lo testee :P)
# - si vas a modificar algo generico, recuerda q tmb
#   a veces usamos ".vimrc_ii_ro" (read-only mode)
#
# (*): puede darse q le de mas argumentos al $exe (ej: -S vim_session_file)
#
##
