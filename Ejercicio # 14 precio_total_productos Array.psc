funcion menu
	escribir "-----Menu de opciones-----"
	escribir "1. guardar datos"
	Escribir "2. modificar datos"
	escribir "3. mostrar datos registrados"
	escribir "4. cantidades sumadas y total x producto"
	escribir "5. mostrar total de todos los productos"
	Escribir "6. salir"
FinFuncion
Funcion guardar_datos_gastos(productos)
	definir i como entero 
	para i <- 1 hasta 3 con paso 1 hacer 
		Escribir "digite cuantas cantidades vendio del producto", i
		Leer productos[i, 1]
		Escribir "digite en cuanto esta el precio del producto ", i
		leer productos[i, 2]
	FinPara
FinFuncion
funcion modificar_datos(productos)
	Definir i Como Entero
	escribir "digite la pocision del producto que desea modificar"
	leer posicion
	si posicion >= 1 y posicion <= 3 Entonces
		Escribir "digite que desea modificar"
		Escribir "1. cantidad"
		Escribir "2. precio"
		leer opcion_1
	SiNo
		Escribir "posicion invalida"
	FinSi
	segun opcion_1 Hacer
		1: 
			Escribir "digite la cantidad nueva"
			leer productos[posicion, 1]
		2:
			escribir "digite el nuevo precio"
			Leer productos[posicion, 2]
	FinSegun
FinFuncion
Funcion mostrar_datos(productos)
	definir i Como Entero
	escribir "estas son las cantidades y precios registradas de los tres productos"
	para i <- 1 hasta 3 Hacer
		Escribir "producto " i
		escribir productos[i,1]
		Escribir "precio " i
		Escribir productos[i,2]
	FinPara
FinFuncion
funcion mostrar_cantidades_sumadas(productos)
	suma <- 0
	para i = 1 hasta 3 Hacer
		suma <- suma + productos[i, 1] 
	FinPara
	Escribir "la suma de las cantidades de los tres productos es: ", suma
	Escribir "total por producto"
	para i <- 1 hasta 3 Hacer
		multiplicacion <- (productos[i,1] * productos[i,2])
		escribir "el total del producto " i " =" multiplicacion " pesos"
	FinPara
FinFuncion
funcion mostrar_total(productos)
	multiplicacion <- 0
	para i <- 1 hasta 3 Hacer
		multiplicacion <- multiplicacion + (productos[i,1] * productos[i,2])
	FinPara
	escribir "el total de todos los productos es" " =" multiplicacion " pesos"
FinFuncion
funcion salir
	Escribir "saliendo del proceso...."
FinFuncion
Algoritmo precio_total_productos 
	definir opcion_ Como Entero
	dimension productos[3, 3]
	repetir 
		Escribir "digite la opcion que desee ejecutar"
		menu
		Leer opcion_
		segun opcion_ hacer
			1:
				guardar_datos_gastos(productos)
			2:
				modificar_datos(productos)
			3:
				mostrar_datos(productos)
			4:
				mostrar_cantidades_sumadas(productos)
			5:
				mostrar_total(productos)
			6:
				salir 
		FinSegun
	Hasta Que opcion_ = 6
	
FinAlgoritmo