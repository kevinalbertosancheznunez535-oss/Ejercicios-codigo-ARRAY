funcion menu
	Escribir "-----menu de opciones-----"
	escribir "1. guardar datos"
	escribir "2. modificar datos"
	escribir "3. mostrar datos"
	escribir "4. total con descuentos"
	escribir "5. salir del programa"
FinFuncion
funcion guardar_datos(producto, num)
	definir i Como Entero
	para i = 1 hasta num con paso 1 hacer 
		Escribir "ingrese la cantidad " i
		leer producto[i, 1]
		Escribir "digite el precio " i
		leer producto[i, 2]
	FinPara
FinFuncion
Funcion modificar_datos(producto, num)
	definir opcion1, produc Como Entero
	escribir "digite la opcion del producto que desea modificar (1 a " , num "):"
	leer produc
	si produc > 0 y produc <= num entonces 
		Escribir "que quiere modificar: "
		escribir "1. precio "
		Escribir "2. cantidad"
		leer opcion1
	SiNo
		escribir "opcion invalida"
	FinSi
	segun opcion1 Hacer
		1:
			escribir "ingrese el nuevo precio: "
			leer producto[produc, 1]
			Escribir "precio modificado exitosamente"
		2:
			escribir "ingrese la nueva cantidad"
			leer producto[produc, 2]
			escribir "cantidad modificada exitosamente"
	FinSegun
FinFuncion
funcion mostrar_datos(producto, num)
	definir i Como Entero
	para i <- 1 hasta num Hacer
		escribir "precio", i ": "
		escribir producto[i,1]
	FinPara
	Para i <- 1 hasta num Hacer
		escribir "cantidad ", i ": "
		Escribir producto[i,2]
	FinPara
FinFuncion
Funcion  Total <- calculartotal(producto, num)
	Total=0
	para i <- 1 hasta num hacer
		Total <- Total + (producto[i, 1] * producto[i, 2])
	FinPara
	escribir "el total de los productos es: ", Total
FinFuncion
funcion Total <- total_descuento(Total)
	Total <- Total * 0.30
	descuento <- Total
FinFuncion
Funcion Total_con_descuento (descuento, Total)
	Total_con_descuent <- Total - descuento
	Escribir "este fue su total con descuento ", Total_con_descuent
FinFuncion
Algoritmo descuento_con_total
	definir num como entero 
	definir opcion_ Como Entero
	escribir "¿Cuantos productos deseas saber el descuento aplicado?"
	leer num
	dimension producto[num, 2]
	repetir 
		Escribir "seleccione la opcion que desee ejecutar"
		menu
		leer opcion_
		Segun opcion_ Hacer
			1: 
				guardar_datos(producto, num)
			2: 
				modificar_datos(producto, num)
			3:
				mostrar_datos(producto, num)
			4:
				Total <- calculartotal(producto, num)
				descuento <- total_descuento(Total)
				Total_con_descuento(descuento, Total)
			5: 
				Escribir "Saliendo del programa"
		FinSegun
	Hasta Que opcion_ = 5
FinAlgoritmo
	