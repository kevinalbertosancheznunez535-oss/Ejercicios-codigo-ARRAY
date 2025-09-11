funcion menu <- mostrar_menu 
	Escribir "------menu------"
	escribir "1. guardar datos "
	escribir "2. modificar datos "
	Escribir "3. mostrar datos y suma "
	Escribir "4. salir del programa "
FinFuncion

funcion guardar_datos <- almacena_informacion(nume)
	para i <- 1 Hasta 5 con paso 1 hacer 
		Escribir "Digite el numero ", i
		leer n
		nume[i] <- n
	FinPara
FinFuncion
funcion modificar_datos(nume)
	escribir "digite la pocision del numero que desea modificar"
	leer posicion
	si posicion >= 1 y posicion <= 5 Entonces
		escribir "ingrese el numero nuevo "
		leer nume[posicion]
	SiNo
		Escribir "posicion invalida"
	FinSi
FinFuncion
funcion suma <- sumarnumeros(nume)
	definir i Como Entero
	suma <- 0 
	para i <- 1 hasta 5 hacer 
		suma <- suma + nume[i]
	FinPara
FinFuncion
funcion mostrar_suma_y_mostrar_numeros(nume)
	definir i, suma como entero 
	escribir "numeros ingresados: "
	para i <- 1 hasta 5 con paso 1 hacer 
		escribir nume[i]
	FinPara
	suma <- sumarnumeros(nume)
	escribir "la suma de los numeros es: ", suma
FinFuncion
Algoritmo sumar_5_numeros
    Definir opcion, nume Como Entero
	dimension nume[5]
	Repetir
		menu<- mostrar_menu
		Escribir "ingrese la opcion que desea ejecutar"
		leer opcion
		Segun opcion hacer
			1:
				guardar_datos <- almacena_informacion(nume)
			2:
				modificar_datos(nume)
			3:
				mostrar_suma_y_mostrar_numeros(nume)
			4:
				Escribir "Gracias por confiar en nosotros"
		FinSegun
	Hasta Que opcion = 4
FinAlgoritmo
