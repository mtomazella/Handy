#!/bin/bash

data=$(date +%Y-%m-%d)
	
	echo -e "\nAdicionando arquivos...\n"
	git add *
	echo -e "\nFazendo commit...\n"
	git commit -m $data
	echo -e "\n\nFazendo push...\n\n"
	git push origin master
	echo -e "\n\nPronto!\n\n"

exit

$SHELL