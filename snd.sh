# envia cualquier archivo local al Dropbox de mi oficina :)
rsync -rvuth --human-readable --progress -b --suffix=_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S` -e "ssh" $PWD/$1 masiasmj@forbush:/home/masiasmj/Dropbox/cosas_trabajo/.
