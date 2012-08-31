#!/bin/sh
clear
echo
echo " 	 _    _ _           _____ ____   "
echo " 	| |  | | |         |  _  \ ___ \ "
echo " 	| |  | | |__  _   _| | | | |_/ / "
echo " 	| |/\| | '_ \| | | | | | | ___ \ "
echo " 	\  /\  / | | | |_| | |/ /| |_/ / "
echo " 	 \/  \/|_| |_|\__, |___/ \____/  "
echo " 	               __/ |             "
echo " 	              |___/              "

until [ "${option}" = "exit" ]; do

	echo
	echo " 	OPTiON	DESCRiPTiON"
	echo " 	fresh	For a fresh install of the database."
	echo " 	update	For updating your database."
	echo " 	info	Shows info about your current db."
	echo " 	exit	Closes this program."
	echo
	read -p "	Option:  " option

	if [ "${option}" = "fresh" ]; then
		clear
		php import.php fresh
	elif [ "${option}" = "update" ]; then
		clear
		php import.php update
	elif [ "${option}" = "info" ]; then
		clear
		php import.php info
	elif [ "${option}" != "exit" ]; then
		echo
		#use dummy because 'read' needs a varible (in POSIX)
		read -p " Option not found, please try again." dummy
		echo
	fi
	if [ "${option}" != "exit" ]; then
		read -p " Press enter to continue..." dummy
	fi
done
echo "Closing.."
