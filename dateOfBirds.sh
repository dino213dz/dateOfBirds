#!/bin/sh

#echo " de quelle date à quelel date? (exemple : 1900 2010)"
#read plage

plage="$1 $2"

ajouter_zero=1

for an in $(seq $plage); do
	for mois in $(seq 1 12); do
		if [ $ajouter_zero -eq 1 ];then
			if [ $mois -lt 10 ];then
				mois="0$mois"			
			fi
		fi
		for jour in $(seq 1 31); do
			if [ $ajouter_zero -eq 1 ];then
				if [ $jour -lt 10 ];then
					jour="0$jour"			
				fi
			fi
			echo "$jour$mois$an"
			echo "$an$mois$jour"
		done
	done
done
