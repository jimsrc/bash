##
#----------------------------------------------------------
echo "########################################################### actividad_solar: (jim) --> (HDD)"
# actividad_solar: (jim) --> (HDD)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/home/jim/actividad_solar/" "/media/JIMMY MASIAS/oficina/actividad_solar/"
#
echo "########################################################### actividad_solar: (HDD) --> (jim)"
# actividad_solar: (HDD) --> (jim)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/media/JIMMY MASIAS/oficina/actividad_solar/" "/home/jim/actividad_solar/"
#----------------------------------------------------------
echo "########################################################### materias_uba: (jim) --> (HDD)"
# materias_uba: (jim) --> (HDD)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/home/jim/materias_uba/" "/media/JIMMY MASIAS/oficina/materias_uba/"
#
echo "########################################################### materias_uba: (HDD) --> (jim)"
# materias_uba: (HDD) --> (jim)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/media/JIMMY MASIAS/oficina/materias_uba/" "/home/jim/materias_uba/"
#----------------------------------------------------------
echo "########################################################### bash: (jim) --> (HDD)"
# bash: (jim) --> (HDD)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/home/jim/bash/" "/media/JIMMY MASIAS/oficina/bash/"
#
echo "########################################################### bash: (HDD) --> (jim)"
# bash: (HDD) --> (jim)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/media/JIMMY MASIAS/oficina/bash/" "/home/jim/bash/"
#----------------------------------------------------------
echo "########################################################### cv: (jim) --> (HDD)"
# application: (jim) --> (HDD)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/home/jim/application/" "/media/JIMMY MASIAS/oficina/application/"
#
echo "########################################################### cv: (HDD) --> (jim)"
# application: (HDD) --> (jim)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/media/JIMMY MASIAS/oficina/application/" "/home/jim/application/"
#----------------------------------------------------------
echo "########################################################### ubuntu: (jim) --> (HDD)"
# ubuntu: (jim) --> (HDD)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/home/jim/ubuntu/" "/media/JIMMY MASIAS/oficina/ubuntu/"
#
echo "########################################################### ubuntu: (HDD) --> (jim)"
# ubuntu: (HDD) --> (jim)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/media/JIMMY MASIAS/oficina/ubuntu/" "/home/jim/ubuntu/"
#----------------------------------------------------------
echo "########################################################### ASO: (jim) --> (HDD)"
# ASO: (jim) --> (HDD)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/home/jim/ASOC_ICME-FD/" "/media/JIMMY MASIAS/oficina/ASOC_ICME-FD/"
#
echo "########################################################### ASO: (HDD) --> (jim)"
# ASO: (HDD) --> (jim)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/media/JIMMY MASIAS/oficina/ASOC_ICME-FD/" "/home/jim/ASOC_ICME-FD/"
#----------------------------------------------------------
echo "########################################################### simulacion: (jim) --> (HDD)"
# simulacion: (jim) --> (HDD)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/home/jim/simulacion/" "/media/JIMMY MASIAS/oficina/simulacion/"
#
echo "########################################################### simulacion: (HDD) --> (jim)"
# simulacion: (HDD) --> (jim)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/media/JIMMY MASIAS/oficina/simulacion/" "/home/jim/simulacion/"
#----------------------------------------------------------
echo "########################################################### ccmc: (jim) --> (HDD)"
# ccmc: (jim) --> (HDD)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/home/jim/ccmc/" "/media/JIMMY MASIAS/oficina/ccmc/"
#
echo "########################################################### ccmc: (HDD) --> (jim)"
# ccmc: (HDD) --> (jim)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/media/JIMMY MASIAS/oficina/ccmc/" "/home/jim/ccmc/"
#----------------------------------------------------------
echo "########################################################### python_scripts: (jim) --> (HDD)"
# python_scripts: (jim) --> (HDD)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/home/jim/python_scripts/" "/media/JIMMY MASIAS/oficina/python_scripts/"
#
echo "########################################################### python_scripts: (HDD) --> (jim)"
# python_scripts: (HDD) --> (jim)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/media/JIMMY MASIAS/oficina/python_scripts/" "/home/jim/python_scripts/"
#----------------------------------------------------------
echo "########################################################### ccin2p3: (jim) --> (HDD)"
# ccin2p3: (jim) --> (HDD)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/home/jim/ccin2p3/" "/media/JIMMY MASIAS/oficina/ccin2p3/"
#
echo "########################################################### ccin2p3: (HDD) --> (jim)"
# ccin2p3 (HDD) --> (jim)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/media/JIMMY MASIAS/oficina/ccin2p3/" "/home/jim/ccin2p3/"
#----------------------------------------------------------
echo "########################################################### papers_mios: (jim) --> (HDD)"
# papers_mios: (jim) --> (HDD)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/home/jim/papers_mios/" "/media/JIMMY MASIAS/oficina/papers_mios/"
#
echo "########################################################### papers_mios: (HDD) --> (jim)"
# papers_mios (HDD) --> (jim)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/media/JIMMY MASIAS/oficina/papers_mios/" "/home/jim/papers_mios/"
#
#----------------------------------------------------------
echo "########################################################### 1_magnetocosmics: (jim) --> (HDD)"
# 1_magnetocosmics: (jim) --> (HDD)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/home/jim/1_magnetocosmics/" "/media/JIMMY MASIAS/oficina/1_magnetocosmics/"
#
echo "########################################################### 1_magnetocosmics: (HDD) --> (jim)"
# 1_magnetocosmics: (HDD) --> (jim)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/media/JIMMY MASIAS/oficina/1_magnetocosmics/" "/home/jim/1_magnetocosmics/"
#
#----------------------------------------------------------
echo "########################################################### informes: (jim) --> (HDD)"
# informes: (jim) --> (HDD)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/home/jim/informes/" "/media/JIMMY MASIAS/oficina/informes/"
#
echo "########################################################### informes: (HDD) --> (jim)"
# informes: (HDD) --> (jim)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/media/JIMMY MASIAS/oficina/informes/" "/home/jim/informes/"
#
#----------------------------------------------------------
echo "########################################################### mathematica_notebooks: (jim) --> (HDD)"
# mathematica_notebooks: (jim) --> (HDD)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/home/jim/mathematica_notebooks/" "/media/JIMMY MASIAS/oficina/mathematica_notebooks/"
#
echo "########################################################### mathematica_notebooks: (HDD) --> (jim)"
# mathematica_notebooks: (HDD) --> (jim)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/media/JIMMY MASIAS/oficina/mathematica_notebooks/" "/home/jim/mathematica_notebooks/"
#
#----------------------------------------------------------
echo "########################################################### charlas: (jim) --> (HDD)"
# charlas: (jim) --> (HDD)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/home/jim/charlas/" "/media/JIMMY MASIAS/oficina/charlas/"
#
echo "########################################################### charlas: (HDD) --> (jim)"
# charlas: (HDD) --> (jim)
rsync -rvubt --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/media/JIMMY MASIAS/oficina/charlas/" "/home/jim/charlas/"
#

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#
# COPIAS "ONE-DIRECTION" (jim) --> (HDD):
#
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#
echo "########################################################### bckp del bashrc: (jim) --> (HDD)"
# bashrc: (jim) --> (HDD)
cp "/home/jim/.bashrc" "/media/JIMMY MASIAS/oficina/copias_bashrc/bashrc_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`"
#
##
