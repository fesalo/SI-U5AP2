#! /bin/bash
## al script hay que pasarle por parámetro el directrorio que contiene los ficheros que queremos borrar
if [ -d "$1" ];then
    direc=$1
    ficheros=$(ls $direc*.txt | wc -l)
    if [ $ficheros -gt 0 ];then
        rm $direc*.txt
        if [ $ficheros -gt 1 ];then
            echo "Se han borrado $ficheros ficheros"
        else   
            echo "Se ha borrado $ficheros fichero"
        fi
    else
        echo "No hay ficheros en el directorio"
    fi
else    
    echo "El directorio no existe"
fi