#!/bin/bash

clear

echo "
                 _        _      
 _ __ ___   __ _| |_ _ __(_)_  __
|  _   _ \ / _  | __|  __| \ \/ /
| | | | | | (_| | |_| |  | |>  < 
|_| |_| |_|\__,_|\__|_|  |_/_/\_\
"                    


echo "
1) unimatrix
2) cmatrix
"
read response

if [[ $response == 1 ]]; then
	unimatrix
elif [[ $response == 2 ]]; then
	cmatrix
else
	exit
fi

clear

