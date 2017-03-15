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
sdir="/work/simulacion"

# get all files (of symlink type) that point to sthing that contained "/home/jim"
fl=(`ls -lR $sdir | awk '
/:$/&&f{s=$0;f=0}
/:$/&&!f{sub(/:$/,"");s=$0;f=1;next}
NF&&f&&($9!="")&&($1~/^l/){ print $1, s"/"$9, "-->"$11"\n" }' | grep $pattern | awk '{print $2}'`)

#echo $fl
for _fl in $fl; do
	#echo "==> " $_fl
	#ls -lhtr $_fl
	rpath=`ls -lhtr $_fl | awk '{print $11}'`
	echo $_fl "===>\n" $rpath

    # correct-pattern for sed
	cpattern=`echo $pattern | sed "s/\\//\\\\\\\\\//g"` # readable pattern for sed (convierte "/" --> "\\/")
    crep_pattern=`echo ${rep_pattern} | sed "s/\\//\\\\\\\\\//g"` # readable pattern for sed (convierte "/" --> "\\/")
	crpath=`echo $rpath | sed "s/$cpattern/${crep_pattern}/g"`
	echo "CORRECT: " $crpath "\n"
	
done

#EOF
