funcion menu
	escribir "-----Menu de opciones-----"
	escribir "1. guardar datos de fecha actual"
	Escribir "2. guardar datos de fecha de nacimiento"
	escribir "3. modificar datos registrados"
	escribir "4. mostrar datos registrados"
	escribir "5. mostrar edades"
	Escribir "6. salir"
FinFuncion
funcion año_actual <- guardar_datos_ingreso(edad)
	Escribir "digite el año actual"
	leer año_actual
FinFuncion
Funcion guardar_datos_gastos(edad)
	definir i como entero 
	para i <- 1 hasta 3 con paso 1 hacer 
		Escribir "escribir el año de nacimiento de la ", i , " persona"
		Leer año_nacimiento
		edad[i] <- año_nacimiento
	FinPara
FinFuncion
funcion modificar_datos(edad)
	Definir i Como Entero
	escribir "digite la pocision del numero que desea modificar"
	leer posicion
	si posicion >= 1 y posicion <= 3 Entonces
		escribir "ingrese el año de nacimiento nuevo "
		leer edad[posicion]
	SiNo
		Escribir "posicion invalida"
	FinSi
FinFuncion
Funcion mostrar_datos(edad)
	definir i Como Entero
	escribir "estas son las fechas de naciemiento registradas "
	para i <- 1 hasta 3 Hacer
		Escribir "persona " i
		escribir edad[i]
	FinPara
FinFuncion
funcion mostrar_edades(edad, año_actual)
	resta <- 0
	para i = 1 hasta 3 Hacer
		resta = año_actual - edad[i] 
		escribir "la edad de la persona ", i " es de ", resta , " años"
	FinPara
FinFuncion
funcion salir
	Escribir "saliendo del proceso...."
FinFuncion
Algoritmo edad_de_tres_personas 
	definir opcion_ Como Entero
	dimension edad[3]
	repetir 
		Escribir "digite la opcion que desee ejecutar"
		menu
		Leer opcion_
		segun opcion_ hacer
			1:
				año_actual <- guardar_datos_ingreso(edad)
			2:
				guardar_datos_gastos(edad)
			3:
				modificar_datos(edad)
			4:
				mostrar_datos(edad)
			5:
				mostrar_edades(edad, año_actual)
			6:
				salir 
		FinSegun
	Hasta Que opcion_ = 6
	
FinAlgoritmo