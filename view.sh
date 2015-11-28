#--------------------------------------------------------
# usamos dferentes configuraciones VIM para c/tipo de 
# archivo :P 
# autor: jimmy  06/jul/2015
#--------------------------------------------------------
file=$1 
if [[ $file == *.py ]]; then
    view -u $HOME/.vimrc_ii $file    # para .py otra configuracion VIM
elif [[ $file == *bashrc ]]; then
    view -u $HOME/.vimrc_ii $file
else
    view -u $HOME/.vimrc_i  $file    # la de siempre fisa-vim (la misma de la web)
fi
