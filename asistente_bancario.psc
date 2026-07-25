Algoritmo asistente_bancario
	Definir opcion, totalCuentas, i, j, idBuscar, siguienteID Como Entero
	Definir encontrado Como Logico
	Definir id Como Entero
	Definir saldo Como Real
	Definir cliente, numeroCuenta, tipoCuenta, estado Como Cadena
	Dimension id[100]
	Dimension cliente[100]
	Dimension numeroCuenta[100]
	Dimension tipoCuenta[100]
	Dimension saldo[100]
	Dimension estado[100]
	totalCuentas <- 0
	siguienteID <- 1
	//---------------------------------------//
	//--|menu_principal_asistente_bancario|--//
	//---------------------------------------//
	Repetir
		Escribir "menu principal asistente bancario"
		Escribir "1) registrar cuenta bancaria"
		Escribir "2) editar cuenta bancaria"
		Escribir "3) eliminar cuenta bancaria"
		Escribir "4) buscar cuenta bancaria"
		Escribir "5) listar cuentas bancarias"
		Escribir "6) ver detalles de la cuenta"
		Escribir "7) mostrar estadisticas"
		Escribir "8) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//-------------------------------//
			//--|registrar_cuenta_bancaria|--//
			//-------------------------------//
			1:
				Escribir "registrar cuenta bancaria"
				id[totalCuentas + 1] <- siguienteID
				siguienteID <- siguienteID + 1
				Escribir "ingrese el nombre del cliente:"
				Leer cliente[totalCuentas + 1]
				Escribir "ingrese el numero de cuenta:"
				Leer numeroCuenta[totalCuentas + 1]
				Escribir "ingrese el tipo de cuenta (ahorros/corriente/empresarial):"
				Leer tipoCuenta[totalCuentas + 1]
				Escribir "ingrese el saldo inicial:"
				Leer saldo[totalCuentas + 1]
				Escribir "ingrese el estado (activa/bloqueada/cerrada):"
				Leer estado[totalCuentas + 1]
				totalCuentas <- totalCuentas + 1
				Escribir "cuenta bancaria registrada correctamente."
			//----------------------------//
			//--|editar_cuenta_bancaria|--//
			//----------------------------//
			2:
				Escribir "editar cuenta bancaria"
				Si totalCuentas = 0 Entonces
					Escribir "no hay cuentas registradas."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalCuentas Hacer
						Escribir id[i], " | ", cliente[i], " | ", numeroCuenta[i], " | ", tipoCuenta[i], " | ", saldo[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la cuenta:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalCuentas Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese el nuevo nombre del cliente:"
							Leer cliente[i]
							Escribir "ingrese el nuevo numero de cuenta:"
							Leer numeroCuenta[i]
							Escribir "ingrese el nuevo tipo de cuenta:"
							Leer tipoCuenta[i]
							Escribir "ingrese el nuevo saldo:"
							Leer saldo[i]
							Escribir "ingrese el nuevo estado:"
							Leer estado[i]
							Escribir "cuenta bancaria editada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro una cuenta con ese id."
					FinSi
				FinSi
			//------------------------------//
			//--|eliminar_cuenta_bancaria|--//
			//------------------------------//
			3:
				Escribir "eliminar cuenta bancaria"
				Si totalCuentas = 0 Entonces
					Escribir "no hay cuentas registradas."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalCuentas Hacer
						Escribir id[i], " | ", cliente[i], " | ", numeroCuenta[i], " | ", tipoCuenta[i], " | ", saldo[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la cuenta:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalCuentas Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalCuentas Entonces
								Para j <- i Hasta totalCuentas - 1 Hacer
									id[j] <- id[j + 1]
									cliente[j] <- cliente[j + 1]
									numeroCuenta[j] <- numeroCuenta[j + 1]
									tipoCuenta[j] <- tipoCuenta[j + 1]
									saldo[j] <- saldo[j + 1]
									estado[j] <- estado[j + 1]
								FinPara
							FinSi
							totalCuentas <- totalCuentas - 1
							Escribir "cuenta bancaria eliminada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro una cuenta con ese id."
					FinSi
				FinSi
			//----------------------------//
			//--|buscar_cuenta_bancaria|--//
			//----------------------------//
			4:
				Escribir "buscar cuenta bancaria"
				Si totalCuentas = 0 Entonces
					Escribir "no hay cuentas registradas."
				SiNo
					Escribir "ingrese el id de la cuenta:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalCuentas Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir id[i], " | ", cliente[i], " | ", numeroCuenta[i], " | ", tipoCuenta[i], " | ", saldo[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro una cuenta con ese id."
					FinSi
				FinSi
			//------------------------------//
			//--|listar_cuentas_bancarias|--//
			//------------------------------//
			5:
				Escribir "listar cuentas bancarias"
				Si totalCuentas = 0 Entonces
					Escribir "no hay cuentas registradas."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalCuentas Hacer
						Escribir id[i], " | ", cliente[i], " | ", numeroCuenta[i], " | ", tipoCuenta[i], " | ", saldo[i], " | ", estado[i]
					FinPara
				FinSi
			//----------------------------//
			//--|ver_detalles_de_cuenta|--//
			//----------------------------//
			6:
				Escribir "ver detalles de la cuenta bancaria"
				Si totalCuentas = 0 Entonces
					Escribir "no hay cuentas registradas."
				SiNo
					Escribir "ingrese el id de la cuenta:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalCuentas Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles de la cuenta bancaria "
							Escribir "id: ", id[i]
							Escribir "cliente: ", cliente[i]
							Escribir "numero de cuenta: ", numeroCuenta[i]
							Escribir "tipo de cuenta: ", tipoCuenta[i]
							Escribir "saldo: ", saldo[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro una cuenta con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|mostrar_estadisticas|--//
			//--------------------------//
			7:
				Escribir "mostrar estadisticas"
				Si totalCuentas = 0 Entonces
					Escribir "no hay cuentas registradas."
				SiNo
					totalActivas <- 0
					totalBloqueadas <- 0
					totalCerradas <- 0
					sumaSaldos <- 0
					mayorSaldo <- saldo[1]
					menorSaldo <- saldo[1]
					Para i <- 1 Hasta totalCuentas Hacer
						sumaSaldos <- sumaSaldos + saldo[i]
						Si saldo[i] > mayorSaldo Entonces
							mayorSaldo <- saldo[i]
						FinSi
						Si saldo[i] < menorSaldo Entonces
							menorSaldo <- saldo[i]
						FinSi
						Si estado[i] = "activa" Entonces
							totalActivas <- totalActivas + 1
						FinSi
						Si estado[i] = "bloqueada" Entonces
							totalBloqueadas <- totalBloqueadas + 1
						FinSi
						Si estado[i] = "cerrada" Entonces
							totalCerradas <- totalCerradas + 1
						FinSi
					FinPara
					promedioSaldo <- sumaSaldos / totalCuentas
					Escribir "estadisticas generales"
					Escribir "total de cuentas: ", totalCuentas
					Escribir "cuentas activas: ", totalActivas
					Escribir "cuentas bloqueadas: ", totalBloqueadas
					Escribir "cuentas cerradas: ", totalCerradas
					Escribir "saldo total: ", sumaSaldos
					Escribir "saldo promedio: ", promedioSaldo
					Escribir "mayor saldo: ", mayorSaldo
					Escribir "menor saldo: ", menorSaldo
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			8:
				Escribir "gracias por utilizar asistente bancario."
			De Otro Modo:
				Escribir "opcion no valida."
		FinSegun
	Hasta Que opcion = 8
FinAlgoritmo