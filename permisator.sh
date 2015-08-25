#! /bin/bash
## Script que sirve para cambiar permisos masivamente a todos los ficheros y carpetas con subcarpetas y sus ficheros que contengan
## ejecutar con el comando # ./permisator DIRECTORIO_O_FICHERO



if [ ! -z "$1" ] ; then


	folderPerm="`zenity --title="Permisator" --entry --text "Permisos para carpetas. Ej: 755"`"
	if [ "$folderPerm" -lt "111" ] || [ "$folderPerm" -gt "777" ] ; then	# 
		zenity --title="Permisator" --warning --text "Los permisos tienen que ser del rango de 111 a 777"	
		exit 1
	fi

	filePerm="`zenity --title="Permisator" --entry --text "Permisos para ficheros. Ej: 644"`"
	if [ "$filePerm" -lt "111" ] || [ "$filePerm" -gt "777" ] ; then	# 
		zenity --title="Permisator" --warning --text "Los permisos tienen que ser del rango de 111 a 777"	
		exit 1
	fi



	if [ "$?" == 0 ] ; then
		zenity --title="Permisator" --question --text="¿Esta seguro de dar permisos en $@ ?"
		find $@ -type d -exec chmod $folderPerm {} \;
		find $@ -type f -exec chmod $filePerm {} \; 		
	else
		zenity --title="Permisator" --error --text="Script cancelado"
	fi

else
	zenity --title="Permisator" --error --text="Introduce alguna carpeta o fichero"
fi

