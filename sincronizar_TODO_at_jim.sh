#!/bin/bash
# author: jimmy j. masias meza
#
# argumentos:
# $1: 'toma', 'dame'
git_sense=$1
#
#i=0
DIR[0]="actividad_solar"            #;i=$(($i+1))
DIR[1]="1_magnetocosmics"
DIR[2]="bash"
DIR[3]="simulacion"
DIR[4]="ubuntu"
DIR[5]="ASOC_ICME-FD"
DIR[6]="application"
DIR[7]="ccmc"
DIR[8]="python_scripts"
DIR[9]="materias_uba"
DIR[10]="papers_mios"
DIR[11]="ccin2p3"
DIR[12]="informes"
DIR[13]="mathematica_notebooks"
DIR[14]="charlas"
DIR[15]="posters"
DIR[16]="data_omni"
#DIR[17]="software"
DIR[17]="papers"
#
N_DIRS=${#DIR[@]}
N_LAST=$[$N_DIRS-1] #17		# indice final de los directorios arriba
#----------------------------------------------------------
HDDname='Elements'                                  # nombre de mi hdd externo
ROOT_SRC=$HOME                                      # directorio raiz local
ROOT_DST=/media/$HDDname/oficina                    # directorio raiz destino
#+++ agrega directorio de backup, y sufijo a c/archivo backupeado
#backup_arg="--backup-dir=\"bckp\" --suffix=\"_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`\""  # back up argument
backup_arg="--backup-dir=bckp --suffix=_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`"  # back up argument
other_arg='-rvubthl --human-readable'               # general args
RSYNC="/usr/bin/rsync"                              # binario del sistema

#echo $backup_arg
#exit(1)
#
for n in $(seq 0 1 $N_LAST)
do
    DIR_SRC="$ROOT_SRC/${DIR[$n]}/"                 # directorio local (mi compu)
    DIR_DST="$ROOT_DST/${DIR[$n]}/"                 # directorio destino (i.e. usb)


    #+++++ local ---> HDD
	echo -e "\e[37m------------------------------------------------------------------------------------------\e[0m"
	echo -e "\e[32m########################################################### ($HOSTNAME) --> (HDD)\e[0m"
	echo -e "\e[32m# <--- ${DIR_SRC}\e[0m"
	echo -e "\e[32m# ---> ${DIR_DST}"
    DIRsed=`echo ${DIR_SRC} | sed "s/\\//\\\\\\\\\//g"` # readable pattern for sed (convierte "/" --> "\\/")
    # linea con "--exclude dir1 --exclude dir2 ..." (excluyo directorios con .git)
    exclude_arg="`find ${DIR_SRC} -name .git -type d -printf \"--exclude=\"%h/\"  \" -prune | sed \"s/${DIRsed}//g\"`"   # OK!
    if [[ ${exclude_arg} == "--exclude=  " ]]; then exclude_arg="--exclude=*"; fi  # si el mismo ${DIR_SRC} tiene un .git
    echo -e "\e[32m ----> EXCLUDE (git directories): ${exclude_arg} \e[1;32m"
    ${RSYNC} ${other_arg} ${exclude_arg} ${backup_arg} "${DIR_SRC}" "${DIR_DST}"


    #+++++ HDD ---> local
	echo -e "\e[0m"
	echo -e "\e[31m########################################################### ($HOSTNAME) <-- (HDD)\e[0m"
	echo -e "\e[31m# ---> ${DIR_SRC}\e[0m"
	echo -e "\e[31m# <--- ${DIR_DST}\e[0m"
    DIRsed=`echo ${DIR_DST} | sed "s/\\//\\\\\\\\\//g"` # readable pattern for sed (convierte "/" --> "\\/")
    # linea con "--exclude dir1 --exclude dir2 ..." (excluyo directorios con .git)
    exclude_arg="`find ${DIR_DST} -name .git -type d -printf \"--exclude=\"%h/\"  \" -prune | sed \"s/${DIRsed}//g\"`"   # OK!
    if [[ ${exclude_arg} == "--exclude=  " ]]; then exclude_arg="--exclude=*"; fi  # si el mismo ${DIR_SRC} tiene un .git
    echo -e "\e[31m ----> EXCLUDE (git directories): ${exclude_arg} \e[1;31m"
	${RSYNC} ${other_arg} ${exclude_arg} ${backup_arg} "${DIR_DST}" "${DIR_SRC}"
done
echo 

#exit 1

#+++++++++++++++++++++++++++++++++++++++++ git sync
# NOTE: special treatment for git repositories!

if [[ ${git_sense} == "dame" ]]; then
    GIT_SRC=${ROOT_DST}
    GIT_DST=${ROOT_SRC}
    col1="\e[1;33m"         # orange: dame
    col2="\e[33m"
elif [[ ${git_sense} == "toma" ]]; then
    GIT_SRC=${ROOT_SRC}
    GIT_DST=${ROOT_DST}
    col1="\e[1;34m"         # blue: toma
    col2="\e[34m"
else
    echo " ### ERROR ###: para git debe ser 'toma' o 'dame'!"
    exit 1  # salir
fi

# setea el color de impresion en la sincronizacion de directorios git
echo -e "\e[0m"
echo -e $col2
git_arg=-rltgoDvh   # igual q -a pero sin -p, y con -vh

for n in $(seq 0 1 $N_LAST); do
    # directorio q esta mas actualizado
    DIR_SRC="$GIT_SRC/${DIR[$n]}/"  
    DIR_DST="$GIT_DST/${DIR[$n]}/"  
    echo " @ ${DIR_SRC} "
    # busco los directorios q contengan un ".git" (excluyendo *bckp*)
    exclude_list=`find ${DIR_SRC} -name .git -type d -not -path "*bckp*" -printf "%h " -prune`
    # nro de directorios git
    n_git=`echo ${exclude_list} | awk '{print NF}'` 
    echo " -----> NGIT: " ${n_git}

    # iter over git repositories
    for m in $(seq 1 1 ${n_git}); do
        # source (git) directory
        git_src=`echo ${exclude_list} | awk '{print $'$m'}'`
        echo " ----> ($m/$n_git): " ${git_src}

        # need to deduce the destination (git) directory
        subdir=${git_src}   # copy that will change later
        dirsplit=`echo ${git_src} | sed "s/\\// /g"` #convierte las "/" en " "
        ndeep=`echo $dirsplit | awk '{print NF}'` # profundidad del directorio

        # iter over subdirectory names in whole path
        for d in $(seq 1 1 $ndeep); do
            branch=`echo $dirsplit | awk '{print $'$d'}'`
            #echo " ....branch....: " $branch
            if [[ $branch == ${DIR[$n]} ]]; then
                #echo " FOUND IT!!"
                nd_ok=$d
                break
            else
                subdir=`echo $subdir | sed "s/\\/$branch//g"`
                #echo " ........dir2: "$subdir
            fi
        done
        git_dst="${GIT_DST}${subdir}"
        echo " ----> git_dst: ${git_dst}"
        echo " url: " `cd ${git_src}; git config --get remote.origin.url`   ### OJO: hice un cd

        # let's rsync
        echo -e $col1
        # NOTE: NO back up!!!, and NO exclusions! (*)
        #${RSYNC} ${other_arg} "${git_src}/" "${git_dst}/"
        ${RSYNC} -${git_arg} --human-readable --delete --rsync-path="sudo -u git rsync" "${git_src}/" "${git_dst}/"
        echo -e "\e[0m" $col2
    done
done

echo -e "\e[0m"         # regresa al color blanco default
# (*): https://help.github.com/enterprise/11.10.340/admin/articles/backing-up-repository-data/
#
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#
# COPIAS "ONE-DIRECTION" (jim) --> (HDD):
#
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#
echo "------------------------------------------------------------------------------------------ sync del bashrc"
echo "########################################################### bckp del bashrc: ($HOSTNAME) --> (HDD)"
cp -p "$HOME/.bashrc" "/media/$HDDname/oficina/copias_bashrc/bashrc_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`"
#
#-------- mando una copia de mi .bashrc al Dropbox:
export ZSH_CUSTOM=$HOME/.oh-my-zsh/custom       # (no existe en el environment de bash)
export DIR_DROPBOX=$HOME/Dropbox/cosas_trabajo
cp -p $HOME/.bashrc $DIR_DROPBOX/bash/.
cp -p $HOME/.zshrc $DIR_DROPBOX/bash/.
cp -p $ZSH_CUSTOM/alias.zsh $DIR_DROPBOX/bash/
cp -p $ZSH_CUSTOM/alias.zsh /media/Elements/oficina/copias_bashrc/.     # por siaca
cp -p $HOME/bash/sincronizar_TODO_at_jim.sh $DIR_DROPBOX/bash/.
#
# RSYNC OPTIONS:
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
# -a, --archive               archive mode; equals -rlptgoD (no -H,-A,-X)
# -p, --perms                 preserve permissions
#
##
