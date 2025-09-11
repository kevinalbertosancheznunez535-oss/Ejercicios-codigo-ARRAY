funcion mostrarmenu 
	escribir "===========MENU==========="
	escribir " 1. guardar notas        "
	escribir " 2. Modificar notas      "
	escribir " 3. mostrar notas y promedio de cada materia "
	escribir " 4. mostrar promedio general"
	escribir " 5. salir                 "
FinFuncion 
funcion guardarnotas(notas)
	Definir materia, nota Como Entero 
	para materia = 1 hasta 3 con paso 1 Hacer
		escribir "ingrese las notas de la materia", materia
		para nota = 1 hasta 3 con paso 1 hacer 
			escribir "ingrese la nota " nota ": "
			leer notas[materia, nota]
		FinPara
	FinPara
FinFuncion
funcion modificar(notas)
	escribir "ingrese el numero de la materia (1-3)"
	leer materia
	escribir "ingrese el numero de la nota (1-3)"
	leer nota
	escribir "ingrese la nueva nota"
	leer nueva_nota
	notas[materia, nota] <- nueva_nota
FinFuncion
funcion promedio <- calcularNotas(notas, materia)
	definir suma Como Real
	suma <- 0
	para nota <- 1 Hasta 3 Hacer
		suma <- suma + notas[materia, nota]
	FinPara
	promedio <- suma / 3
FinFuncion
funcion mostrarDatos(notas)
	para materia = 1 hasta 3 hacer 
		escribir "materia " materia, ": "
		para nota = 1 hasta 3 hacer 
			escribir "nota " nota ": ", notas(materia, nota)
		FinPara
	FinPara
FinFuncion
funcion mostrarpromedio(notas)
	para materia <- 1 hasta 3 hacer 
		promedio <- calcularNotas(notas, materia)
		escribir " el promedio de la materia " materia " es ", promedio
	FinPara
FinFuncion
funcion promedioGeneral <- calculapromediogeneral(notas)
	suma_promedios <- 0
	para materia = 1 hasta 3 Hacer
		promedioMateria <- calcularNotas(notas, materia)
		suma_promedios <- suma_promedios + promedioMateria
	FinPara
	promedioGeneral <- suma_promedios / 3
FinFuncion
Algoritmo calcularpromedio3materias
	definir opcion1 Como Entero
	dimension notas[3, 3]
	repetir 
		mostrarmenu
        Escribir "Ingrese la opcion que desea ejecutar: "
        Leer opcion1
        Segun opcion1 Hacer 
            1:
                guardarnotas(notas)
            2: 
                modificar(notas)
            3: 
				mostrarDatos(notas)
                mostrarpromedio(notas)
            4: 
                promedioGeneral <- calculapromediogeneral(notas)
				escribir "el promedio general de las 3 materias es de: " promedioGeneral
            5:
                Escribir "saliento del programa........"
			De Otro Modo:
				escribir "opcion invalida vuelva a ingresar"
        FinSegun
    Hasta Que opcion1 = 5
FinAlgoritmo
