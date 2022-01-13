##1.10.3 Plant–Pollinator Networks 

## 1) Write a script that takes one of these files and determines the number of rows (pollinators) and columns (plants). Note that columns are 
## separated by spaces and that there is a space at the end of each line. Your script should return 

## determinar el numero de las filas

wc -l ~/CBS/data/Saavedra2013/n11.txt 

## determinar el numero de columnas 
## primero remover todos los espacios 

head -n 1  /CBS/data/Saavedra2013/n11.txt | tr -d ' '| tr -d '\n' | wc -c

## 2) Write a script that prints the numbers of rows and columns for each network:

## primero declarar la variable que contenga todos los archivos con la extensión .txt 

files= ~/CBS/data/Saavedra2013/*.txt 

for i in $files 
do 
   row= cat $i | wc -l 
   echo $i $row 
done 

##nota: guardamos el script como all_rows.sh  

## En las columnas es necesario aplicar el script de la pregunta 1 a todos los documentos con extensión .txt 
## posteriormente realizamos un bucle 

for i in $files 
do 
   col= head -n 1 $i | tr -d ' ' | tr -d '\n' | wc -c 
   echo $i $col 
done 
## guardamos script como all_columns.sh 

## 3) Which file has the largest number of rows? Which has the largest number of columns?

bash all_rows.sh | sort -n -r -k 2 | head -n 1 

bash all_columns.sh | sort -n -r -k 2 | head -n 1 



