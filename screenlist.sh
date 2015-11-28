#!/bin/bash

# filters the screen -ls output to show the sesssions
sessions=`screen -ls | sed -ne 's/[[:space:]]//' -ne 's/\((Attached)\|(Detached)\|(Multi, detached)\|(Multi, attached)\)// p'`
#echo $sessions
#echo $sessions | wc -w
res=`echo "$sessions" | wc -w`

if [[ "$res" != "0" ]]
then

        echo ''
        echo "  CURRENT SESSIONS"
        echo "  ------------------------"
        #screen -ls | sed -ne 's/[[:space:]]//' -ne 's/\((Attached)\|(Detached)\)// p' | cat -n
        echo "$sessions" | cat -n
        echo "  ------------------------"
        echo ''

        #prompt for the session to join
        echo -n "  Reattach to session, or ENTER for None: "
        read session

        if [[ $session != 0 ]]
        then

            #attach to specified session
            linenum=0
            name=`screen -ls | sed -ne 's/[[:space:]]//' -ne 's/\((Attached)\|(Detached)\|(Multi, detached)\|(Multi, attached)\)// p' |
            while read line
            do
             let "linenum += 1"
             if [[ "$linenum" -eq "$session" ]]
             then
                    echo $line
                    break
             fi
            done`
            shrtname=`echo $name | sed -e 's/[[:space:]]//' -e 's/(.*)//' -e 's/\t//g'`


            echo "Reattaching to: " $shrtname
            if [[ "$name" != "" ]]; then
                if  
                    #echo $shrtname
                    screen -r "$shrtname"
                then
                    echo -n " Bye bye screen.. Exit?[y] "
                    read nbye
                        if [[ "$nbye" == "" ]]
                        then 
                            exit
                        else
                            goodbye=$nbye
                        fi  
                        if [[ "$goodbye" == "y" ]]
                        then
                            exit
                        else
                            echo "What's next?"
                        fi  
                else
                    if  
                        # try multiuser connect
                        screen -Ax "$shrtname"
                    then
                        echo "Hope that was fun!"
                    else
                        echo "Trying to Force connection"
                        screen -D -r "$shrtname"
                    fi  
                fi  
            else
               echo "Could not reattach to $session"
            fi  
        else
            echo " Have fun..."
        fi  
else
        echo "  No existing SCREEN session to reattach to..."

fi
