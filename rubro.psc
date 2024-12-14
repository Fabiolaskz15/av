Algoritmo sin_titulo
	definir dias, sul como real
	Escribir "ingresa tu nombre"
	leer nm
	escribir"ingresa tu direccion"
	leer dr
	escribir "puesto ocupado"
	leer ps
	escribir"cual es tu sueldo semanal"
	leer sul
	escribir "dias trabajados"
	leer dias
	escribir "horas extras trabajadas"
	leer hrs
	pd=sul/6
	pn= pd*dias
	ph=pd/8
	
	sul=pd*dias
	si hrs<=8 Entonces
		hrste=(hrs*ph)*2
		total=hrste+sul
		escribir "tu total a pagar es ", total
	sino 
		si hrs >= 9 entonces 
			hrste=(8*ph)*2
			hrst= (ph*3)*(hrs-8)+hrste
			total=hrst+sul
			escribir "tu total a pagar es ", total
		FinSi
	FinSi
	
	si total <=2500 Entonces
		lisr= total * 0.04
		escribir "tu descuento de LISR es ", lisr
	SiNo
		si total >=2501 entonces
			lisr= total * 0.07
			escribir "tu descuento de LISR es ", lisr
		finsi
		si total<=3000 Entonces
			imss= total * 0.03
			escribir "tu descuento de IMSS es ", imss
		SiNo
			si total>=3001 entonces
				imss= total * 0.05
				escribir "tu descuento de IMSS es ", imss
			FinSi
		FinSi
		
		
	FinSi
	cuts= total * 0.02
	escribir"tu descuento de cuota sindical es ", cuts
	totalD= imss + lisr + cuts
	escribir"tu total de deduccion es ", totalD
	totalN= total-totalD
	escribir"tu total de NETO es ", totalN
	
	
FinAlgoritmo
