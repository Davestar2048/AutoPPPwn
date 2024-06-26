#!/bin/bash

if [ -f ~/AutoPPPwn/PPPwn/upd.log ]; then
   sudo rm -f ~/AutoPPPwn/PPPwn/upd.log
fi
while read -r stdo ; 
do 
  echo -e $stdo | sudo tee /dev/tty1 | sudo tee /dev/pts/* | sudo tee -a ~/AutoPPPwn/PPPwn/upd.log
done < <(sudo bash ~/AutoPPPwn/PPPwn/update.sh)
