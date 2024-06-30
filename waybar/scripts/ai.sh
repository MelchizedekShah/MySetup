#!/bin/bash

#This is a bash script that give 4 ai options to choice and then run them.
#You can give this script a key bind to open it
#Example (hyprland): bind = $mainMod, A, exec, kitty sh -c 'path to the ai.sh'

echo " 
  ___  _ _                            _    _
 / _ \| | | __ _ _ __ ___   __ _     / \  (_)
| | | | | |/ _\ |  _ \  _\ / _  \   / _ \ | |
| |_| | | | (_| | | | | | | (_| |  / ___ \| |
 \___/|_|_|\__,_|_| |_| |_|\__,_| /_/   \_\_|"
                                                 
echo ""

echo "Hello $USER, please select your ai model:
1 - llama3
2 - gemma2
3 - phi3
4 - mistral"

read choice

case $choice in

1)
clear
                                            
echo "
 _ _                       _____ 
| | | __ _ _ __ ___   __ _|___ / 
| | |/ _  |  _   _   / _  | |_ | 
| | | (_| | | | | | | (_| |___) |
|_|_|\__,_|_| |_| |_|\__,_|____/ " 

echo ""

ollama run llama3
;;

2)
clear

echo " 
                                      ____  
  __ _  ___ _ __ ___  _ __ ___   __ _|___ \ 
 / _  |/ _ \  _   _ \|  _   _ \ / _  | __) |
| (_| |  __/ | | | | | | | | | | (_| |/ __/ 
 \__, |\___|_| |_| |_|_| |_| |_|\__,_|_____|
 |___/ "                                     

echo ""

ollama run gemma2
;;

3)
clear

echo "
       _     _ _____ 
 _ __ | |__ (_)___ / 
|  _ \|  _ \| | |_ \ 
| |_) | | | | |___) |
| .__/|_| |_|_|____/ 
|_|"                  

echo ""

ollama run phi3:medium
;;
   
4)
clear

echo "
           _     _             _ 
 _ __ ___ (_)___| |_ _ __ __ _| |
|  _   _ \| / __| __|  __/ _  | |
| | | | | | \__ \ |_| | | (_| | |
|_| |_| |_|_|___/\__|_|  \__,_|_|"

echo ""
                                
ollama run mistral
;;
    
esac



