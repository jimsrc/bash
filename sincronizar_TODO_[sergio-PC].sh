##
#
echo "########################################################### actividad_solar: (forbush) --> (HDD)"
# actividad_solar: (forbush) --> (HDD)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/home/masiasmj/actividad_solar/" "/media/JIMMY MASIAS/oficina/actividad_solar/"
#
echo "########################################################### actividad_solar: (HDD) --> (forbush)"
# actividad_solar: (HDD) --> (forbush)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/media/JIMMY MASIAS/oficina/actividad_solar/" "/home/masiasmj/actividad_solar/"
#
echo "########################################################### materias_uba: (forbush) --> (HDD)"
# materias_uba: (forbush) --> (HDD)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/home/masiasmj/materias_uba/" "/media/JIMMY MASIAS/oficina/materias_uba/"
#
echo "########################################################### materias_uba: (HDD) --> (forbush)"
# materias_uba: (HDD) --> (forbush)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/media/JIMMY MASIAS/oficina/materias_uba/" "/home/masiasmj/materias_uba/"
#
echo "########################################################### bash: (forbush) --> (HDD)"
# bash: (forbush) --> (HDD)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/home/masiasmj/bash/" "/media/JIMMY MASIAS/oficina/bash/"
#
echo "########################################################### bash: (HDD) --> (forbush)"
# bash: (HDD) --> (forbush)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/media/JIMMY MASIAS/oficina/bash/" "/home/masiasmj/bash/"
#
echo "########################################################### cv: (forbush) --> (HDD)"
# application: (forbush) --> (HDD)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/home/masiasmj/application/" "/media/JIMMY MASIAS/oficina/application/"
#
echo "########################################################### cv: (HDD) --> (forbush)"
# application: (HDD) --> (forbush)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/media/JIMMY MASIAS/oficina/application/" "/home/masiasmj/application/"
#
echo "########################################################### ubuntu: (forbush) --> (HDD)"
# ubuntu: (forbush) --> (HDD)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/home/masiasmj/ubuntu/" "/media/JIMMY MASIAS/oficina/ubuntu/"
#
echo "########################################################### ubuntu: (HDD) --> (forbush)"
# ubuntu: (HDD) --> (forbush)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/media/JIMMY MASIAS/oficina/ubuntu/" "/home/masiasmj/ubuntu/"
#----------------------------------------------------------
echo "########################################################### ASO: (forbush) --> (HDD)"
# ASO: (forbush) --> (HDD)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/home/masiasmj/ASOC_ICME-FD/" "/media/JIMMY MASIAS/oficina/ASOC_ICME-FD/"
#
echo "########################################################### ASO: (HDD) --> (forbush)"
# ASO: (HDD) --> (forbush)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/media/JIMMY MASIAS/oficina/ASOC_ICME-FD/" "/home/masiasmj/ASOC_ICME-FD/"
#----------------------------------------------------------
echo "########################################################### simulacion: (forbush) --> (HDD)"
# simulacion: (forbush) --> (HDD)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/home/masiasmj/simulacion/" "/media/JIMMY MASIAS/oficina/simulacion/"
#
echo "########################################################### simulacion: (HDD) --> (forbush)"
# simulacion: (HDD) --> (forbush)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/media/JIMMY MASIAS/oficina/simulacion/" "/home/masiasmj/simulacion/"
#----------------------------------------------------------
echo "########################################################### ccmc: (forbush) --> (HDD)"
# ccmc: (forbush) --> (HDD)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/home/masiasmj/ccmc/" "/media/JIMMY MASIAS/oficina/ccmc/"
#
echo "########################################################### ccmc: (HDD) --> (forbush)"
# ccmc: (HDD) --> (forbush)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/media/JIMMY MASIAS/oficina/ccmc/" "/home/masiasmj/ccmc/"
#----------------------------------------------------------
echo "########################################################### python_scripts: (forbush) --> (HDD)"
# python_scripts: (forbush) --> (HDD)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/home/masiasmj/python_scripts/" "/media/JIMMY MASIAS/oficina/python_scripts/"
#
echo "########################################################### python_scripts: (HDD) --> (forbush)"
# python_scripts: (HDD) --> (forbush)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/media/JIMMY MASIAS/oficina/python_scripts/" "/home/masiasmj/python_scripts/"
#----------------------------------------------------------
echo "########################################################### ccin2p3: (forbush) --> (HDD)"
# ccin2p3: (forbush) --> (HDD)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/home/masiasmj/ccin2p3/" "/media/JIMMY MASIAS/oficina/ccin2p3/"
#
echo "########################################################### ccin2p3: (HDD) --> (forbush)"
# ccin2p3: (HDD) --> (forbush)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/media/JIMMY MASIAS/oficina/ccin2p3/" "/home/masiasmj/ccin2p3/"
#----------------------------------------------------------
echo "########################################################### papers_mios: (forbush) --> (HDD)"
# papers_mios: (forbush) --> (HDD)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/home/masiasmj/papers_mios/" "/media/JIMMY MASIAS/oficina/papers_mios/"
#
echo "########################################################### papers_mios: (HDD) --> (forbush)"
# papers_mios: (HDD) --> (forbush)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/media/JIMMY MASIAS/oficina/papers_mios/" "/home/masiasmj/papers_mios/"
#----------------------------------------------------------
echo "########################################################### 1_magnetocosmics: (forbush) --> (HDD)"
# 1_magnetocosmics: (forbush) --> (HDD)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/home/masiasmj/1_magnetocosmics/" "/media/JIMMY MASIAS/oficina/1_magnetocosmics/"
#
echo "########################################################### 1_magnetocosmics: (HDD) --> (forbush)"
# 1_magnetocosmics: (HDD) --> (forbush)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/media/JIMMY MASIAS/oficina/1_magnetocosmics/" "/home/masiasmj/1_magnetocosmics/"
#
#----------------------------------------------------------
echo "########################################################### mathematica_notebooks: (forbush) --> (HDD)"
# mathematica_notebooks: (forbush) --> (HDD)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/home/masiasmj/mathematica_notebooks/" "/media/JIMMY MASIAS/oficina/mathematica_notebooks/"
#
echo "########################################################### mathematica_notebooks: (HDD) --> (forbush)"
# mathematica_notebooks: (HDD) --> (forbush)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/media/JIMMY MASIAS/oficina/mathematica_notebooks/" "/home/masiasmj/mathematica_notebooks/"
#
#----------------------------------------------------------
echo "########################################################### charlas: (forbush) --> (HDD)"
# charlas: (orbush) --> (HDD)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/home/masiasmj/charlas/" "/media/JIMMY MASIAS/oficina/charlas/"
#
echo "########################################################### charlas: (HDD) --> (forbush)"
# charlas: (HDD) --> (forbush)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/media/JIMMY MASIAS/oficina/charlas/" "/home/masiasmj/charlas/"
#

#----------------------------------------------------------
echo "########################################################### informes: (forbush) --> (HDD)"
# informes: (forbush) --> (HDD)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/home/masiasmj/informes/" "/media/JIMMY MASIAS/oficina/informes/"
#
echo "########################################################### informes: (HDD) --> (forbush)"
# informes: (HDD) --> (forbush)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/media/JIMMY MASIAS/oficina/informes/" "/home/masiasmj/informes/"
#
##
