funcion menu
	Escribir "------menu------"
	escribir "1. guardar datos "
	escribir "2. modificar datos "
	Escribir "3. mostrar datos"
	Escribir "4. resultados de Km/h de ambos carros"
	Escribir "5. salir del programa "
FinFuncion

funcion guardar_datos(velocidad)
	definir i Como Entero
	para i <- 1 hasta 2 con paso 1 hacer 
		Escribir "carro " i
		Escribir "digite la distancia que rrecorio (m):"
		leer velocidad[i, 1]
		escribir "digite en cuanto tiempo (h) rrecorio esta distancia ", velocidad[i, 1], " (m)"
		leer velocidad[i, 2]
	FinPara
FinFuncion
funcion modificar_datos(velocidad)
	escribir "digite el carro en la que desea hacer la modificacion (1 o 2)"
	leer posicion 
	si posicion > 0 y posicion <= 2 entonces 
		Escribir "que quiere modificar: "
		escribir "1. distancia"
		Escribir "2. tiempo"
		leer opcion1
	SiNo
		escribir "opcion invalida"
	FinSi
	segun opcion1 Hacer
		1:
			escribir "ingrese la nueva distancia: "
			leer velocidad[posicion, 1]
			Escribir "distancia modificada exitosamente"
		2:
			escribir "ingrese el nuevo tiempo"
			leer velocidad[posicion, 2]
			escribir "tiempo  modificado exitosamente"
	FinSegun
FinFuncion
funcion mostrar_datos(velocidad)
	definir i como entero 
	escribir "datos ingresados: "
	para i <- 1 hasta 2 Hacer
		Escribir "carro ", i
		escribir "la distancia es: ", velocidad[i, 1] " m"
		Escribir "el tiempo que duro en rrecorrerla: ", velocidad[i, 2], " h"
	FinPara
FinFuncion
funcion Resultados_de_la_velocidad(velocidad)
	para i <- 1 Hasta 2 Hacer
		resultado <- velocidad[i, 1] / velocidad[i, 2]
		Escribir "el carro ", i , " corrio a ", resultado, " Km/h"
	FinPara
FinFuncion
Algoritmo Kmxh_de_2_carros
	dimension velocidad[2, 2]
	Repetir
		Escribir "ingrese la opcion que desea ejecutar"
		menu
		leer opcion
		Segun opcion hacer
			1:
				guardar_datos(velocidad)
			2:
				modificar_datos(velocidad)
			3:
				mostrar_datos(velocidad)
			4:
				Resultados_de_la_velocidad(velocidad)
			5:
				Escribir "saliendo del proceso...."
		FinSegun
	Hasta Que opcion = 5
FinAlgoritmo
