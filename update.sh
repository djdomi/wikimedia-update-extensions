#!/bin/bash
#No end Slash!
WPATH=/path/to/extensions
# False/true - delete path before
DELPATH=false
BRANCH=REL1_24
#!!!!!NO SLASH ON THE END!!!!!!


################################################################################################
################################################################################################
#  ______   ________   ______   _______         __    __  ________  _______   ________ 
# /      \ /        | /      \ /       \       /  |  /  |/        |/       \ /        |
#/$$$$$$  |$$$$$$$$/ /$$$$$$  |$$$$$$$  |      $$ |  $$ |$$$$$$$$/ $$$$$$$  |$$$$$$$$/ 
#$$ \__$$/    $$ |   $$ |  $$ |$$ |__$$ |      $$ |__$$ |$$ |__    $$ |__$$ |$$ |__    
#$$      \    $$ |   $$ |  $$ |$$    $$/       $$    $$ |$$    |   $$    $$< $$    |   
# $$$$$$  |   $$ |   $$ |  $$ |$$$$$$$/        $$$$$$$$ |$$$$$/    $$$$$$$  |$$$$$/    
#/  \__$$ |   $$ |   $$ \__$$ |$$ |            $$ |  $$ |$$ |_____ $$ |  $$ |$$ |_____ 
#$$    $$/    $$ |   $$    $$/ $$ |            $$ |  $$ |$$       |$$ |  $$ |$$       |
# $$$$$$/     $$/     $$$$$$/  $$/             $$/   $$/ $$$$$$$$/ $$/   $$/ $$$$$$$$/ 
#                                                                                    
#      Special thanks to Telegram User: sausix, huanzo for helping!                                                                         
################################################################################################
################################################################################################

#Normally no need to change, only except in case, if you dont use it for that i've written this ;)
GURL=https://gerrit.wikimedia.org/r/mediawiki/extensions
#NO SLASH ON THE END!!


if [ -d "$WPATH" ]; then
        for dir in $(find . -maxdepth 1 -type d -print); do
                if [[ $dir != "." ]]; then
                        EXTN=`basename $dir`

if [[ $DELPATH != "false" ]]; then
        rm -r $WPATH/$EXTN
fi

git clone $GURL/$EXTN $WPATH/$EXTN --branch $BRANCH
fi
done

        else
                echo "Error: ${WPATH} not found. Can not continue."
                echo "Edit this script: ${0}"
        exit 1
fi

