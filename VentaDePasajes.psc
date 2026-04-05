Proceso VentaDePasajes
	
	//Definir V.
	
	Definir nombre Como Caracter;
	Definir rut Como Caracter;
	Definir destino, asiento, i Como Entero;
	Definir estudiante Como Caracter;
	Definir precio_base, precio_final Como Real;
	
	//Ciclo
	
	Para i<-1 Hasta 5 Hacer
		Escribir "Compra N° ", i;
		
		//Entrada de Datos
		
		Escribir "Ingrese Nombre";
		Leer nombre;
		
		Escribir "Ingrese Rut";
		Leer rut;
		
		//Destino
		
		Escribir "Indica el destino";
		Escribir "1. Santiago, precio $10000 CLP";
		Escribir "2. Valparaiso, precio $8000 CLP";
		Escribir "3. oncepcion, precio $15000 CLP";
		Leer destino;
		
		Segun destino Hacer
			1:
				precio_base<-10000;
			2:
				precio_base<-8000;
			3:
				precio_base<-15000;
				
			De Otro Modo:
				Escribir "Por favor, ingrese un valor correcto";
				precio_base<-0;
		FinSegun
		
		//Asientos
		
		Escribir "Selecione un asiento";
		Escribir "1. Asiento Normal";
		Escribir "2. Asiento Semi-Cama (20% Mas)";
		Escribir "3. Asiento Cama (40% Mas)";
		Leer asiento;
		
		Segun asiento Hacer
			1:
				precio_final<-precio_base;
			2:
				precio_final<-precio_base * 1.2;
			3:
				precio_final<-precio_base * 1.4;
				
			De Otro Modo:
				Escribir "Por favor, ingrese un valor correcto";
				precio_final<-precio_base;
		FinSegun
		
		//Descuento estudiante
		
		Escribir "¿Usted es estudiante? (s/n)";
		Leer estudiante;
		
		Si estudiante = "s" Entonces
			precio_final<-precio_final - 2000;
		FinSi
		
		//Boleta
		
		Escribir "Boleta";
		Escribir "Hola, ", nombre ;
		Escribir "Tu numero de rut es: ", rut;
		Escribir "Lindo lugar, tu destino es: ", destino;
		Escribir "Espero que este comodo, tu asiento es: ", asiento;
		Escribir "Te deseo u buen viaje, tu monto a pagar es: $", precio_final;
		
	FinPara
	
FinProceso