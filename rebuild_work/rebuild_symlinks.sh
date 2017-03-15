#!/usr/sbin/zsh

#---- sources
# check if a column starts w a certain pattern (inside awk):
# http://unix.stackexchange.com/questions/72734/awk-print-line-only-if-the-first-field-start-with-string-as-linux1
#------------

# pattern to look for inside the symlinks
pattern="/home/jim"
# replace-pattern (string that replaces over the $pattern)
rep_pattern="/work"

# directory inside which we'll search
#sdir="/work/simulacion"
sdir="$1" # 1st argument

# get all files (of symlink type) that point to sthing that contained "/home/jim"
fl=(`ls -lR $sdir | awk '
/:$/&&f{s=$0;f=0}
/:$/&&!f{sub(/:$/,"");s=$0;f=1;next}
NF&&f&&($9!="")&&($1~/^l/){ print $1, s"/"$9, "-->"$11"\n" }' | grep $pattern | awk '{print $2}'`)

# number of files detected
NF=${#fl[@]}
[[ $NF == 0 ]] && echo " --> NO FILTERED-SYMLINKS FOUND. " && exit 1 || echo "\n ---> we got $NF files!\n" # cut here if nothing was found!

nff=0 # number of fixed (effectively) files
for _fl in $fl; do
    # check wheter it is a slink that WE have created IN
    # THIS SCRIPT:
    [[ "$_fl" == *SlinkBckp ]] && echo " -> it's our backup. " && continue 

    # real path where symlink points to
	rpath=`ls -lhtr $_fl | awk '{print $11}'`
	echo $_fl "===>\n" $rpath

    # correct patterns for sed
	cpattern=`echo $pattern | sed "s/\\//\\\\\\\\\//g"` # readable pattern for sed (convierte "/" --> "\\/")
    crep_pattern=`echo ${rep_pattern} | sed "s/\\//\\\\\\\\\//g"` # readable pattern for sed (convierte "/" --> "\\/")

    # NEW path (to point to)
	crpath=`echo $rpath | sed "s/$cpattern/${crep_pattern}/g"` # new/correct path!!
	echo "CORRECT:\n" $crpath
    
    # make backup of symlink
    mv "$_fl" "${_fl}_SlinkBckp"
    
    # redirect the symlink!
    ln -sf $crpath $_fl && nff=$(($nff+1))
    echo "NEW SYMLINK:"
    ls -lhtr $_fl && echo "\n"
done

echo " ---> we fixed $nff/$NF symlinks!"

#EOF
