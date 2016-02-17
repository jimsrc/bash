#!/bin/bash
#
INTR=
trap 'INTR=yes; echo "** INTR **" >&2' INT

while :
do
    (
        # Protect the subshell block
        trap '' INT

        # Protected code here
        echo -n "The date/time is: "
        sleep 2
        date
        read -t2 -p 'Continue (y/n)? ' YN || echo
        test n = "$YN" && echo "Asked for BREAK" >&2 && exit 90
    )
    SS=$?
    test 90 -eq $SS && echo "Matched BREAK" >&2 && break

    # Ctrl/C, perhaps?
    test yes = "$INTR" && echo "Matched INTR" >&2 && continue
done

#echo " ----> still here!!!"
exit 0
