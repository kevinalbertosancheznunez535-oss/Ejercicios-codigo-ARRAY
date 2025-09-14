funcion menu
	Escribir "-----menu de opciones-----"
	escribir "1. guardar datos"
	escribir "2. modificar datos"
	escribir "3. mostrar datos"
	escribir "4. conversion celsius a fahrenheit"
	escribir "5. salir del programa"
FinFuncion
Funcion guardar_datos(conversion, num)
	definir i Como Entero
	para i <- 1 hasta num Con Paso 1 Hacer
		escribir "ingrese la temperatura ", i " en °Celcius "
		leer conversion[i, 1]
	FinPara
FinFuncion
Funcion modificar_datos(conversion, num)
	definir opcion1, convertir como entero 
	escribir "digite la opcion donde esten los °C que desee modificar (1 a ", num "):"
	leer convertir
	Escribir "ingrese los nuevos °Celsius"
	leer conversion[convertir, 1]
FinFuncion
Funcion mostrar_datos(conversion, num)
	definir i como entero 
	para i <- 1 hasta num hacer 
		escribir "°Celsius ", i
		escribir conversion[i, 1]
	FinPara
FinFuncion
Funcion conversion_celcius_a_fahrenheit(conversion, num)
	definir fahrenheit como real 
	fahrenheit<- fahrenheit + conversion[num,1] * 1.8 + 32
	escribir "los °fahrenheit son: ", fahrenheit
FinFuncion
Algoritmo celsius_a_fahrenheit
	definir num, opcion1, opcion_ Como Entero
	Escribir "cuantas conversiones desea hacer"
	leer num
	dimension conversion[num, 1]
	Repetir
		escribir "digite una opcion"
		menu
		leer opcion_
		segun opcion_ Hacer
			1:
				guardar_datos(conversion, num)
			2:
				modificar_datos(conversion, num)
			3:
				mostrar_datos(conversion, num)
			4:
				conversion_celcius_a_fahrenheit(conversion, num)
			5:
				
		FinSegun
	Hasta Que opcion_ = 5 
	escribir "saliendo del programa...."
FinAlgoritmo
	