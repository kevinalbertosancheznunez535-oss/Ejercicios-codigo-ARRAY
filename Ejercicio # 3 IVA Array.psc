funcion mostrar_menu
	escribir "------Menu_de_opciones------"	
	escribir "1. Guardar datos"
	escribir "2. Modificar datos"
	escribir "3. Mostrar datos"
	escribir "4. Total productos"
	Escribir "5. Total con iva"
	escribir "6. salir"
FinFuncion
Funcion guardardatos(producto, num)
	definir i como entero 
	para i = 1 Hasta num con paso 1 hacer 
		Escribir "ingrese la cantidad " i
		Leer producto[i,1]
		escribir "ingrese el precio " i
		leer producto[i, 2]
	FinPara
FinFuncion
funcion modificar_datos(producto, num)
	definir opcion1, produc Como Entero
	escribir "digite la opcion del producto que deseas modificar (1 a ",num, "):"
	leer produc
	si produc > 0 y produc <= num entonces 
		escribir "¿que quiere modificar?"
		Escribir "1. precio "
		Escribir "2. cantidad"
		leer opcion1
	SiNo
		Escribir "opcion invalida"
	FinSi
	Segun opcion1 Hacer
		1:
			Escribir "ingrese el nuevo precio: "
			leer producto[produc, 1]
			escribir "bien, precio modificado exitosamente"
		2: 
			Escribir "ingrese la nueva cantidad"
			leer producto[produc, 2]
			escribir "bien cantidad modificada exitosamente"
		De Otro Modo:
			Escribir "opcion invalida"
	FinSegun
FinFuncion
Funcion mostrar_datos (producto, num)
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
funcion iva <- calcular_iva(total)
	total <- total * 1.19
	iva <- total 
	escribir "el total con iva es: ", iva
FinFuncion
Algoritmo IVA_
	definir num como entero
	definir opcion_ Como entero
	
	escribir "digite cuantos totales con IVA deseas saber"
	leer num
	dimension producto[num, 2]
	Repetir
		mostrar_menu
		escribir "seleccione la opcion que desea ejecutar"
		leer opcion_
		Segun opcion_ hacer 
			1:
				guardardatos(producto, num)
			2: 
				modificar_datos(producto, num)
			3: 
				mostrar_datos(producto, num)
			4:
				Total <- calculartotal(producto, num)
			5:
				iva <- calcular_iva(total)
			6:
		FinSegun
	Hasta Que opcion_ = 6
	escribir "saliendo del programa"
	
FinAlgoritmo
	