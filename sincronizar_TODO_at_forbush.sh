#!/bin/bash
# author: jimmy j. masias meza
#
DIR[0]="actividad_solar"
DIR[1]="materias_uba"
DIR[2]="bash"
DIR[3]="application"
DIR[4]="ubuntu"
DIR[5]="ASOC_ICME-FD"
DIR[6]="simulacion"
DIR[7]="ccmc"
DIR[8]="python_scripts"
DIR[9]="ccin2p3"
DIR[10]="papers_mios"
DIR[11]="1_magnetocosmics"
DIR[12]="informes"
DIR[13]="mathematica_notebooks"
DIR[14]="charlas"
DIR[15]="posters"
DIR[16]="data_omni"
#DIR[17]="software"
DIR[17]="papers"
#
HDDname='Elements'          # nombre de mi hdd externo
#
N_DIRS=${#DIR[@]}
N_LAST=$[$N_DIRS-1] #17		# indice final de los directorios arriba
#----------------------------------------------------------
#
for n in $(seq 0 1 $N_LAST)
do
    DIR_SRC="$HOME/${DIR[$n]}/"                     # directorio local (mi compu)
    DIR_DST="/media/$HDDname/oficina/${DIR[$n]}/"   # directorio destino (i.e. usb)
	echo -e "\e[37m------------------------------------------------------------------------------------------\e[0m"
	echo -e "\e[32m########################################################### ($HOSTNAME) --> (HDD)\e[0m"
	echo -e "\e[32m# <--- ${DIR_SRC}\e[0m"
	echo -e "\e[32m# ---> ${DIR_DST}"
	echo -e "\e[1;32m"
	rsync -rvubthl --human-readable --backup-dir="bckp" --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "${DIR_SRC}" "${DIR_DST}"
	#rsync -rvubthl --human-readable --backup-dir="bckp" --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "${DIR_LOC[$n]}" "${DIR_DST[$n]}"
	#   
	echo -e "\e[0m"
	echo -e "\e[31m########################################################### ($HOSTNAME) <-- (HDD)\e[0m"
	echo -e "\e[31m# ---> ${DIR_SRC}\e[0m"
	echo -e "\e[31m# <--- ${DIR_DST}\e[0m"
	echo -e "\e[1;31m"
	rsync -rvubthl --human-readable --backup-dir="bckp" --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "${DIR_DST}" "${DIR_SRC}"
	#rsync -rvubthl --human-readable --backup-dir="bckp" --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "${DIR_DST[$n]}" "${DIR_LOC[$n]}"
done
echo ""
#
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#
# COPIAS "ONE-DIRECTION" (forbush) --> (HDD):
#
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#
echo "------------------------------------------------------------------------------------------ sync del bashrc"
echo "########################################################### bckp del bashrc: ($HOSTNAME) --> (HDD)"
cp -p "$HOME/.bashrc" "/media/$HDDname/oficina/copias_bashrc/bashrc_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`"
#
#-------- mando una copia de mi .bashrc al Dropbox:
DIR_DROPBOX=$HOME/Dropbox/cosas_trabajo
cp -p $HOME/.bashrc $DIR_DROPBOX/bash/.
cp -p $HOME/bash/sincronizar_TODO_at_forbush.sh $DIR_DROPBOX/bash/.
cp -p $ZSH_CUSTOM/alias.zsh /media/$HDDname/oficina/copias_bashrc/alias_at_forbush.zsh
#
# OPTIONS:
# -r, --recursive             recurse into directories
# -v, --verbose               increase verbosity
# -u, --update                skip files that are newer on the receiver
# -b, --backup                make backups (see --suffix & --backup-dir)
#     --inplace               update destination files in-place
#     --append                append data onto shorter files
#     --append-verify         --append w/old data in file checksum
# -t, --times                 preserve modification times
# -h, --human-readable        output numbers in a human-readable format
#     --progress              show progress during transfer
# -l, --links                 copy symlinks as symlinks
#
##
