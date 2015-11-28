#!/bin/bash
#Ipython  

# imprime figura en ventana a parte
#ipython qtconsole --pylab=auto --stylesheet="$HOME/python_scripts/ccs_sheets/qtconsole.css"

# imprime figura en consola
#ipython qtconsole --pylab=inline --stylesheet="$HOME/python_scripts/ccs_sheets/qtconsole_2.css" &
ipython qtconsole --profile=jim --pylab=inline --stylesheet="$HOME/python_scripts/ccs_sheets/qtconsole_2.css" &

# este es el normal
#ipython qtconsole --pylab=inline & 

# tema oscuro de linux (figuras en ventana a parte)
#ipython qtconsole --colors=linux --pylab=inline
# le puse "&" xq sino en zsh no me deja cerrar la terminal
