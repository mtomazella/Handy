#!/bin/bash

data=$(date +%Y-%m-%d)

branch=$(git branch)
branch=${branch: -10}

if [ "$branch" != "$data" ];
	then
	
	echo -e "\n\nFazendo checkout para novo branch...\n\n"
	git checkout -b $data
	echo -e "\nAdicionando arquivos...\n"
	git add *
	echo -e "\nFazendo commit...\n"
	git commit -m $data

else

	echo -e "\n\nAdicionando arquivos...\n\n"
	git add *
	echo -e "\n\nFazendo commit...\n\n"
	git commit -m $data" edit"

fi

	echo -e "\n\nFazendo push...\n\n"
	git push origin $data
	echo -e "\n\nPronto!\n\n"

exit

$SHELL