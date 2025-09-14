funcion menu
	Escribir "-----menu de opciones-----"
	escribir "1. guardar datos"
	escribir "2. modificar datos"
	escribir "3. mostrar datos"
	escribir "4. costo total de horas"
	escribir "5. salir del programa"
FinFuncion
funcion guardar_datos(total)
	definir i Como Entero
	Escribir "digite en cuanto esta la tarifa x hora"
	leer total[1]
	Escribir "digite cuantas horas trabajo el dia de hoy"
	Leer total[2]
FinFuncion
Funcion modificar_datos(total)
	definir opcion1, produc Como Entero
	escribir "digite la opcion del producto que desea modificar (1 a 2):"
	leer tarea
	si tarea > 0 y tarea <= 3 entonces 
		Escribir "que quiere modificar: "
		escribir "1. tarifa x hora "
		Escribir "2. horas trabajadas"
		leer opcion1
	SiNo
		escribir "opcion invalida"
	FinSi
	segun opcion1 Hacer
		1:
			escribir "ingrese el nuevo precio de tarifa x hora: "
			leer total[1]
			Escribir "precio modificado exitosamente"
		2:
			escribir "ingrese la horas nuevas"
			leer total[2]
			escribir "horas modificadas exitosamente"
	FinSegun
FinFuncion
funcion mostrar_datos(total)
	definir i Como Entero
		escribir "tarifa x hora: "
		escribir total[1]
		escribir "horas: "
		Escribir total[2]
FinFuncion
Funcion  costo_total <- calculartotal(total)
	costo_total = 0
	costo_total <- costo_total + total[1] * total[2]
FinFuncion
Funcion costo_total_tarifa(total, costo_total)
	Escribir "este fue su costo total de las horas trabajadas ", costo_total
FinFuncion
Algoritmo Tarifa_x_hora
	definir opcion_ Como Entero
	dimension total[2]
	repetir 
		Escribir "seleccione la opcion que desee ejecutar"
		menu
		leer opcion_
		Segun opcion_ Hacer
			1:
				guardar_datos(total)
			2:
				modificar_datos(total)
			3:
				mostrar_datos(total)
			4:
				costo_total <- calculartotal(total)
				costo_total_tarifa(total, costo_total)
			5: 
				Escribir "Saliendo del programa"
		FinSegun
	Hasta Que opcion_ = 5
FinAlgoritmo