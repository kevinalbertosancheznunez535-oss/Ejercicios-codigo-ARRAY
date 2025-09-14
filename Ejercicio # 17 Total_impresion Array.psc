funcion menu
	Escribir "------menu------"
	escribir "1. guardar datos "
	escribir "2. modificar datos "
	Escribir "3. mostrar datos"
	Escribir "4. mostrar total de la impresion"
	Escribir "5. salir del programa "
FinFuncion

funcion guardar_datos(impresion)
	Escribir "digite cuantas impresiones desea sacar"
	leer impresion[1]
	Escribir "digite que vale cada impresion"
	leer impresion[2]
FinFuncion
funcion modificar_datos(impresion)
	Escribir "que desea modificar"
	Escribir "1. impresiones"
	Escribir "2. precio"
	leer opcion_1
	segun opcion_1 Hacer
		1: 
			Escribir "digite la impresion nueva"
			leer impresion[1]
		2:
			escribir "digite el precio nuevo"
			leer impresion[2]
	FinSegun
FinFuncion
funcion suma_de_impresion(impresion)
	definir i Como Entero
	multiplicacion <- 0 
	multiplicacion <- impresion[1] * impresion[2]
	Escribir "El total a pagar por las impresiones es de: ", multiplicacion, " pesos"
FinFuncion
funcion mostrar_precios(impresion)
	definir i como entero 
	escribir "estos son las impresiones y precios registrados: "
	Escribir impresion[1] " hojas"
	Escribir impresion[2] " pesos"
FinFuncion
Algoritmo Total_impresion
    Definir opcion_ Como Entero
	dimension impresion[2]
	Repetir
		Escribir "ingrese la opcion que desea ejecutar"
		menu
		leer opcion_
		Segun opcion_ hacer
			1:
				guardar_datos(impresion)
			2:
				modificar_datos(impresion)
			3:
				mostrar_precios(impresion)
			4:
				suma_de_impresion(impresion)
			5:
				Escribir "saliendo del proceso...."
		FinSegun
	Hasta Que opcion_ = 5
FinAlgoritmo