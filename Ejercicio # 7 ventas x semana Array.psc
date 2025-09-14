funcion menu
	escribir "-----Menu de opciones-----"
	escribir "1. guardar datos"
	Escribir "2. modificar datos"
	escribir "3. mostrar datos "
	escribir "4. total ventas en la semana"
	Escribir "5. salir"
FinFuncion
funcion guardar_datos(dias)
	definir i Como Entero
	para i <- 1 hasta 7 Con Paso 1 Hacer
		Escribir "digite cuanto se vendio el dia ", i
		leer dia
		dias[i] <- dia
	FinPara
FinFuncion
funcion modificar_datos(dias)
	Definir dia Como Entero
	Escribir "digite de que día necesita modificar la venta (1-7)"
	Leer dia
	Escribir "digite la nueva venta" 
	Leer dias[dia]
FinFuncion
	Funcion mostrar_datos(dias)
		definir i Como Entero
		para i <- 1 hasta 7 Hacer
			escribir "dia", i ": "
			escribir dias[i]
		FinPara
FinFuncion
Funcion suma <- total_ventas_semana(dias)
	definir i como entero 
	suma<- 0
	para i <- 1 hasta 7 hacer 
		suma <- suma + dias[i]
	FinPara
FinFuncion
funcion mostrar_total(dias)
	suma <- total_ventas_semana(dias)
	Escribir "el total de las ventas de la semana fue de: " suma , " pesos"
FinFuncion
funcion salir
	Escribir "saliendo del proceso...."
FinFuncion
Algoritmo ventas_x_semana
	definir opcion_ Como Entero
	dimension dias[7]
	repetir 
		Escribir "digite la opcion que desee ejecutar"
		menu
		Leer opcion_
		segun opcion_ hacer
			1:
				guardar_datos(dias)
			2:
				modificar_datos(dias)
			3:
				mostrar_datos(dias)
			4:
				mostrar_total(dias)
			5:
				salir 
		FinSegun
	Hasta Que opcion_ = 5
	
FinAlgoritmo
	