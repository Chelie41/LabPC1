#!/bin/bash
function verProcesos() {
	ps | sort
}
salida=0
while [ $salida -eq 0 ]
do
	echo "Mostrando PID de los preocesos:"
	verProcesos
	echo Indique el pid a terminar: 
	read ptk
	kill -9 $ptk
	echo Quiere salir? 0-No Cualquier tecla-Si
	read salida
done
