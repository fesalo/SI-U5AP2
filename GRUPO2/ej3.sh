#! /bin/bash
## al script hay que pasarle por parámetro el directrorio que contiene los ficheros que queremos borrar
direc=$1
ficheros=$(ls $direc*.txt | wc -l)
if [ $ficheros -gt 0 ];then
    rm $direc*.txt
    if [ $fichers -gt 1 ];then
        echo "Se han borrado $ficheros ficheros"
    else   
        echo "Se ha borrado $ficheros fichero"
    fi
else
    echo "No hay ficheros en el directorio"
fi