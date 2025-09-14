funcion menu
	Escribir "-----menu de opciones-----"
	escribir "1. guardar datos"
	escribir "2. modificar datos"
	escribir "3. mostrar datos"
	escribir "4. mostrar las calorias consumidas en la semana"
	escribir "5. salir del programa"
FinFuncion
funcion guardar_datos(calorias)
	definir i Como Entero
	para i = 1 hasta 7 con paso 1 hacer 
		Escribir "ingrese las calorias del dia " i
		leer dia
		calorias[i] <- dia 
	FinPara
FinFuncion
Funcion modificar_datos(calorias)
	escribir "digite la pocision del dia de las calorias que desea modificar"
	leer posicion
	si posicion >= 1 y posicion <= 7 Entonces
		escribir "ingrese las nuevas calorias consumidas en el dia "
		leer calorias[posicion]
	SiNo
		Escribir "posicion invalida"
	FinSi
	
FinFuncion
funcion mostrar_datos(calorias)
	definir i Como Entero
	Para i <- 1 hasta 7 Hacer
		escribir "las calorias del dia ", i " son: "
		escribir calorias[i]
	FinPara
FinFuncion
Funcion  calcular_calorias(calorias)
	suma <- 0
	para i <- 1 hasta 7 hacer
		suma <- suma + calorias[i]
	FinPara
	escribir "la suma total de las calorias en la semana es: ", suma
FinFuncion
Algoritmo calorias_consumidas_semanales
	definir opcion_ Como Entero
	dimension calorias[7]
	repetir 
		Escribir "seleccione la opcion que desee ejecutar"
		menu
		leer opcion_
		Segun opcion_ Hacer
			1: 
				guardar_datos(calorias)
			2: 
				modificar_datos(calorias)
			3:
				mostrar_datos(calorias)
			4:
				calcular_calorias(calorias)
			5: 
				Escribir "Saliendo del programa"
		FinSegun
	Hasta Que opcion_ = 5
FinAlgoritmo