funcion menu
	Escribir "-----menu de opciones-----"
	escribir "1. guardar datos"
	escribir "2. modificar datos"
	escribir "3. mostrar datos"
	escribir "4. mostrar imc de las dos presonas"
	escribir "5. salir del programa"
FinFuncion
funcion guardar_datos(imc)
	definir i Como Entero
	para i = 1 hasta 2 con paso 1 hacer 
		Escribir "ingrese el peso de la persona " i
		leer imc[i, 1]
		Escribir "digite la altura de la persona " i
		leer imc[i, 2]
	FinPara
FinFuncion
Funcion modificar_datos(imc)
	definir opcion1, produc Como Entero
	escribir "digite la posicion que desea modificar (1 a 2):"
	leer posicion 
	si posicion > 0 y posicion <= 3 entonces 
		Escribir "que quiere modificar: "
		escribir "1. peso"
		Escribir "2. altura"
		leer opcion1
	SiNo
		escribir "opcion invalida"
	FinSi
	segun opcion1 Hacer
		1:
			escribir "ingrese el nuevo peso: "
			leer imc[posicion, 1]
			Escribir "peso modificado exitosamente"
		2:
			escribir "ingrese la nueva altura"
			leer imc[posicion, 2]
			escribir "altura modificada exitosamente"
	FinSegun
FinFuncion
funcion mostrar_datos(imc)
	definir i Como Entero
		Para i <- 1 hasta 2 Hacer
			escribir "peso persona ", i ": "
			escribir imc[i, 1]
			escribir "altura persona ", i ": "
			Escribir imc[i, 2]
		FinPara
FinFuncion
Funcion  calcular_imc <- calcular(imc)
	para i <- 1 hasta 2 hacer
		calcular_imc <- imc[i, 1] * imc[i, 2]
		escribir "el IMC de la persona ", i " es: ", calcular_imc
	FinPara
FinFuncion
Algoritmo IMC_de_2_personas
	definir imc Como Real
	definir opcion_ Como Entero
	dimension imc[2, 2]
	repetir 
		Escribir "seleccione la opcion que desee ejecutar"
		menu
		leer opcion_
		Segun opcion_ Hacer
			1: 
				guardar_datos(imc)
			2: 
				modificar_datos(imc)
			3:
				mostrar_datos(imc)
			4:
				calcular_imc <- calcular(imc)
			5: 
				Escribir "Saliendo del programa"
		FinSegun
	Hasta Que opcion_ = 5
FinAlgoritmo