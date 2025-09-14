funcion menu(servicios)
	Escribir "------menu------"
	escribir "1. guardar datos "
	escribir "2. modificar datos "
	Escribir "3. mostrar datos"
	Escribir "4. mostrar total de los ", servicios " servicios"
	Escribir "5. salir del programa "
FinFuncion

funcion guardar_datos(consumos, servicios)
	para i <- 1 Hasta servicios con paso 1 hacer 
		Escribir "Digite cuanto debe pagar por el servicio ", i
		leer consumos[i]
	FinPara
FinFuncion
funcion modificar_datos(consumos, servicios)
	escribir "digite la pocision del servicio"
	leer posicion
	si posicion >= 1 y posicion <= servicios Entonces
		escribir "ingrese el nuevo precio del servicio"
		leer consumos[posicion]
	SiNo
		Escribir "posicion invalida"
	FinSi
FinFuncion
funcion suma_de_servicios(consumos, servicios)
	definir i Como Entero
	suma <- 0 
	para i <- 1 hasta servicios hacer 
		suma <- suma + consumos[i]
	FinPara
	Escribir "El total de los ", servicios " servicios" " es: ", suma, " pesos"
FinFuncion
funcion mostrar_precios(consumos, servicios)
	definir i como entero 
	escribir "estos son los precios registrados: "
	para i <- 1 hasta servicios con paso 1 hacer 
		Escribir "servicio ", i 
		escribir consumos[i] " pesos"
	FinPara
FinFuncion
Algoritmo Total_servicios
    Definir opcion_ Como Entero
	Escribir "digite cuantos servicios deseas pagar"
	leer servicios
	dimension consumos[servicios]
	Repetir
		Escribir "ingrese la opcion que desea ejecutar"
		menu(servicios)
		leer opcion_
		Segun opcion_ hacer
			1:
				guardar_datos(consumos, servicios)
			2:
				modificar_datos(consumos, servicios)
			3:
				mostrar_precios(consumos, servicios)
			4:
				suma_de_servicios(consumos, servicios)
			5:
				Escribir "saliendo del proceso...."
		FinSegun
	Hasta Que opcion_ = 5
FinAlgoritmo