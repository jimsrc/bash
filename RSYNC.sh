##
#
echo " Ingresar el nombre de los directorios en COMILLAS:"
echo "######################################"
echo " Directorio 'DESDE':"
read DIR_FROM
echo " Directorio 'HACIA':"
read DIR_TO
echo "######################################"
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%k.%M.%S`" "$DIR_FROM" "$DIR_TO"
echo "######################################"
echo " DONE!"
#
##
