funcion menu
	escribir "-----Menu de opciones-----"
	escribir "1. guardar datos de ingresos"
	Escribir "2. guardar datos de gastos"
	escribir "3. modificar datos"
	escribir "4. mostrar datos"
	escribir "5. total ganancias"
	Escribir "6. salir"
FinFuncion
funcion guardar_datos_ingresos(ingresos)
	definir i Como Entero
		Escribir "digite cuanto se gano el dia de hoy "
		leer ingreso
		ingresos[1] <- ingreso
FinFuncion
Funcion guardar_datos_gastos(gastos)
	definir i como entero 
	escribir "digite cuanto se gasto el dia de hoy "
	leer gasto
	gastos[1] <- gasto
FinFuncion
funcion modificar_datos(ingresos, gastos)
	Definir gasto, ingreso Como Entero
	Escribir "¿que desea modificar"
	Escribir "1. ingresos"
	Escribir "2. gastos"
	Escribir "digite la oopcion"
	Leer opcion1
	Segun opcion1 Hacer
		1:
			Escribir "digite el nuevo ingreso"
			Leer ingresos[1]
		2:
			Escribir "digite el nuevo gasto"
			Leer gastos[1]
	FinSegun
FinFuncion
Funcion mostrar_datos(ingresos, gastos)
	definir i Como Entero
		escribir "esta fue su ingreso del dia"
		escribir ingresos[1]
		escribir "este fue su gasto del dia"
		escribir gastos[1]
FinFuncion
Funcion resta <- hacer_resta(ingresos, gastos)
	definir i como entero 
	resta<- 0
	resta <- ingresos[1] - gastos[1]
FinFuncion
	funcion ganancia <- ganancia_neta(ingresos, gasto, resta)
	ganancia <- resta
FinFuncion
funcion mostrar_ganancias(ingresos, gastos, ganancia)
	resta <- hacer_resta(ingresos, gastos)
	ganancia <- ganancia_neta(ingresos, gasto, resta)
	Escribir "Las ganacias del dia son: " ganancia
FinFuncion
funcion salir
	Escribir "saliendo del proceso...."
FinFuncion
Algoritmo Ganancias
	definir opcion_ Como Entero
	dimension ingresos[1]
	dimension gastos[1]
	repetir 
		Escribir "digite la opcion que desee ejecutar"
		menu
		Leer opcion_
		segun opcion_ hacer
			1:
				guardar_datos_ingresos(ingresos)
			2:
				guardar_datos_gastos(gastos)
			3:
				modificar_datos(ingresos, gastos)
			4:
				mostrar_datos(ingresos, gastos)
			5:
				mostrar_ganancias(ingresos, gastos, ganancia)
			6:
				salir 
		FinSegun
	Hasta Que opcion_ = 6
	
FinAlgoritmo