##
#
echo "########################################################### actividad_solar: (forbush) --> (HDD)"
# actividad_solar: (forbush) --> (HDD)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%k.%M.%S`" "/home/masiasmj/actividad_solar/" "/media/JIMMY MASIAS/oficina/actividad_solar/"
#
echo "########################################################### actividad_solar: (HDD) --> (forbush)"
# actividad_solar: (HDD) --> (forbush)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%k.%M.%S`" "/media/JIMMY MASIAS/oficina/actividad_solar/" "/home/masiasmj/actividad_solar/"
#
echo "########################################################### materias_uba: (forbush) --> (HDD)"
# materias_uba: (forbush) --> (HDD)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%k.%M.%S`" "/home/masiasmj/materias_uba/" "/media/JIMMY MASIAS/oficina/materias_uba/"
#
echo "########################################################### materias_uba: (HDD) --> (forbush)"
# materias_uba: (HDD) --> (forbush)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%k.%M.%S`" "/media/JIMMY MASIAS/oficina/materias_uba/" "/home/masiasmj/materias_uba/"
#
echo "########################################################### bash: (forbush) --> (HDD)"
# bash: (forbush) --> (HDD)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%k.%M.%S`" "/home/masiasmj/bash/" "/media/JIMMY MASIAS/oficina/bash/"
#
echo "########################################################### bash: (HDD) --> (forbush)"
# bash: (HDD) --> (forbush)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%k.%M.%S`" "/media/JIMMY MASIAS/oficina/bash/" "/home/masiasmj/bash/"
#
echo "########################################################### cv: (forbush) --> (HDD)"
# application: (forbush) --> (HDD)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%k.%M.%S`" "/home/masiasmj/application/" "/media/JIMMY MASIAS/oficina/application/"
#
echo "########################################################### cv: (HDD) --> (forbush)"
# application: (HDD) --> (forbush)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%k.%M.%S`" "/media/JIMMY MASIAS/oficina/application/" "/home/masiasmj/application/"
#
echo "########################################################### ubuntu: (forbush) --> (HDD)"
# ubuntu: (forbush) --> (HDD)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%k.%M.%S`" "/home/masiasmj/ubuntu/" "/media/JIMMY MASIAS/oficina/ubuntu/"
#
echo "########################################################### ubuntu: (HDD) --> (forbush)"
# ubuntu: (HDD) --> (forbush)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%k.%M.%S`" "/media/JIMMY MASIAS/oficina/ubuntu/" "/home/masiasmj/ubuntu/"
echo "###########################################################"
#
##
