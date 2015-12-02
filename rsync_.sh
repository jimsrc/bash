
echo " dir_remote [e.g. ~/simulacion/]: "
read DIR_REMOTE
echo " dir_local [~/simulacion/]: "
read DIR_LOCAL
echo " remote_hostname [e.g. localhost, ccage.in2p3.fr]: "
read HOSTNAME
echo " ssh_port [e.g. ssh -p 2224, ENTER sin puerto]"
read SSH_PORT
echo " excluir filetype? [e.g. *.bz2]"
read FILE_TYPE
#

SSH_PORT=`printf "ff %d" $SSH_PORT`
# sincroniza LOCAL ==>> REMOTE
#rsync -rvubt -e "$SSH_OPTIONS" --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "$DIR_LOCAL" masiasmj@$HOSTNAME:$DIR_REMOTE

RSYNC_COMMAND=`printf "rsync -rvubt -e \"ssh -p %s\" --exclude='%s' --suffix=\"_bckp_\`hostname\`_\`date +%d%b%Y_%H.%M.%S\`\" masiasmj@%s:%s \"%s\"" $SSH_PORT $FILE_TYPE $HOSTNAME $DIR_REMOTE $DIR_LOCAL`
echo $RSYNC_COMMAND
#rsync -rvubt -e "$SSH_OPTIONS" --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" masiasmj@$HOSTNAME:$DIR_REMOTE "$DIR_LOCAL"
#
