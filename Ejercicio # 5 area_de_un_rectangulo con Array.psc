funcion menu 
	Escribir "----menu de opciones----"
	escribir "1. ingresar base y altura"
	Escribir "2 modificar base o altura"
	escribir "3. mostrar base y altura"
	Escribir "4. resultado area"
	escribir "5. salir del programa"
FinFuncion
funcion Datos(area, num)
	definir i Como Entero
	para i <- 1 hasta num con paso 1 hacer 
	Escribir "ingrese la base del rectangulo: ", i
	leer area[i, 1]
	escribir "ingrese la altura del rectangulo: ", i
	leer area[i, 2]
FinPara
FinFuncion
Funcion modificar_datos(area, num)
	definir opcion, opcion1 Como Entero
	Escribir "digite la opcion donde se encuentra ubicado la base y altura (1 a ", num "):"
	leer opcion
	si opcion > 0 y opcion <= num Entonces
		escribir "que quiere modificar"
		Escribir "1. base"
		escribir "2. altura"
		leer opcion1
	SiNo
		Escribir "opcion invalida"
	FinSi
	segun opcion1 Hacer
		1: 
			escribir "ingrese la nueva base "
			leer area[opcion,1]
			escribir "base modificada exitosamente"
		2:
			escribir "ingrese la nueva altura"
			leer area[opcion,2]
			Escribir "altura modificada exitosamente"
	FinSegun
FinFuncion
funcion mostrar_datos(area, num)
	definir i Como Entero
	para i <- 1 hasta num Hacer
		escribir "base", i ": "
		escribir area[i,1]
	FinPara
	Para i <- 1 hasta num Hacer
		escribir "altura ", i ": "
		Escribir area[i,2]
	FinPara
FinFuncion
funcion resultado_area(area, num )
	definir i Como Entero
	para i <- 1 hasta num hacer 
		total <- total + (area[i, 1] *  area[i, 2])
	FinPara
	Escribir "El area del rectangulo es: ", total
FinFuncion

Algoritmo area_de_un_rectangulo
	definir num, opcion_ Como Entero
	escribir "cuantas bases x altura desea calcular para determinar el area"
	leer num
	dimension area[num, 2]
	repetir
		Escribir "digite una opcion"
		menu
		leer opcion_
		segun opcion_ Hacer
			1:
				Datos(area, num)
			2:
				modificar_datos(area, num)
			3:
				mostrar_datos(area, num)
			4:
				resultado_area(area, num )
			5:
				
		FinSegun
	Hasta Que opcion_ = 5
	Escribir "Saliendo del programa....."
FinAlgoritmo
	