#!/usr/bin/env ipython
# -*- coding: utf-8 -*-
import os, sys
import console_colors as c

HOME        = os.environ['HOME']
hostname    = os.environ['HOSTNAME']

DIRs    = []
DIRs    += ['actividad_solar']
DIRs    += ['materias_uba']
DIRs    += ['bash']

HDDname     = 'Elements'          # nombre de mi hdd externo
DIR_HDD     = '/media/' + HDDname + '/oficina'
N_DIRS      = len(DIRs)

#+++++ default settings
default_opts    = True
backup          = True


RSYNC   = 'rsync ' 
RSYNC   += '--human-readable ' 
if default_opts:
    RSYNC   += '-rvubthl ' 
    RSYNC   += ''
else:
    RSYNC   += opt['options']   # hay q definir opt!

if backup:
    RSYNC   += '--backup-dir="bckp" --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" '


for i in range(N_DIRS):
    dir_src = HOME + '/' + DIRs[i]
    dir_dst = '/media/' + HDDname + '/' + DIRs[i]
    
    print c.Gn + '########################################################### ('+hostname+') --> (HDD)'
    print c.G + ' <--- ' + dir_src
    print c.G + ' ---> ' + dir_dst + c.W
    RSYNC_EXEC = RSYNC + ' "' + dir_src + '" "' + dir_dst + '"'
    print RSYNC_EXEC 

    print c.Rn + '########################################################### ('+hostname+') --> (HDD)'
    print c.R + ' ---> ' + dir_dst
    print c.R + ' <--- ' + dir_src + c.W
    RSYNC_EXEC = RSYNC + ' "' + dir_dst + '" "' + dir_src + '"'
    print RSYNC_EXEC 
