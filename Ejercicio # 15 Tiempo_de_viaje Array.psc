funcion menu 
	Escribir "------menu------"
	escribir "1. guardar datos "
	escribir "2. modificar datos "
	Escribir "3. mostrar datos"
	Escribir "4. mostrar cuanto duro en el viaje"
	Escribir "5. salir del programa "
FinFuncion

funcion guardar_datos(viaje, paradas)
	para i <- 1 Hasta paradas con paso 1 hacer 
		Escribir "Digite cuanto tiempo duro en el viaje ", i
		leer viaje[i]
	FinPara
FinFuncion
funcion modificar_datos(viaje, paradas)
	escribir "digite la pocision de la parada"
	leer posicion
	si posicion >= 1 y posicion <= paradas Entonces
		escribir "ingrese el tiempo nuevo "
		leer viaje[posicion]
	SiNo
		Escribir "posicion invalida"
	FinSi
FinFuncion
funcion suma_de_viajes_hechos(viaje, paradas)
	definir i Como Entero
	suma <- 0 
	para i <- 1 hasta paradas hacer 
		suma <- suma + viaje[i]
	FinPara
	Escribir "usted duro viajando ", suma, " horas"
FinFuncion
funcion mostrar_tiempos(viaje, paradas)
	definir i, suma como entero 
	escribir "tiempos de viajes ingresados: "
	para i <- 1 hasta paradas con paso 1 hacer 
		Escribir "parada ", i 
		escribir viaje[i] " horas"
	FinPara
FinFuncion
Algoritmo Tiempo_de_viaje
    Definir opcion, nume Como Entero
	Escribir "digite cuantas paradas hizo durante su viaje"
	leer paradas
	dimension viaje[paradas]
	Repetir
		Escribir "ingrese la opcion que desea ejecutar"
		menu
		leer opcion
		Segun opcion hacer
			1:
				guardar_datos(viaje, paradas)
			2:
				modificar_datos(viaje, paradas)
			3:
				mostrar_tiempos(viaje, paradas)
			4:
				suma_de_viajes_hechos(viaje, paradas)
			5:
				Escribir "saliendo del proceso...."
		FinSegun
	Hasta Que opcion = 5
FinAlgoritmo
