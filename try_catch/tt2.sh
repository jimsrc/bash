#!/bin/bash
pressed_ctrl_c=
trap "pressed_ctrl_c=1" INT
while true
do
    echo "((dummy sleep))" && sleep 40
    echo "((another dummy sleep))" && sleep 40
    (trap "" INT;   # (*1)
    sleep 0.2)&
    wait  #||  wait
    if [ "$pressed_ctrl_c" ]; then
        echo " ---> KEYBOARD INTERR!"
        read -p ' Continue? (y/[n]): ' YN && echo #" -answer:"$?
        if [ "${YN}" == 'y' ]; then
            pressed_ctrl_c= # forget i ever pressed ctrl-c
            continue
        else
            echo " ---> Exit gracefully..."
            exit 0 #break #exit 0
        fi
    else
        echo " running..."
    fi
done
exit 0
#
# (*1): this replaces the defined trap before. When 
# ctrl-c is catched, the (...) routine will 
# do "" (no intructions: nothing).
