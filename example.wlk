object puenteDeBrooklyn { // solo pasan los que pesan hasta 1000
	   
	   const pesoSoportado = 1000
       
	   method aceptaA(mensajero) {
           return mensajero.peso() <= pesoSoportado
    }
}

object laMatrix { // solo acepta a los que pueden realizar llamadas
    
	method aceptaA(mensajero) {
          return mensajero.puedeLlamar()
  }
	  
}

object chuckNorris { // pesa 900 y puede llamar 
          
		  method peso() {
			return 900
		  }

		  method puedeLlamar() {
			return true
		  }
}

object neo { // no pesa nada, solo puede llamar cuando tiene credito 
   const peso       = 0
   var   tieneCredito = false 

        method peso() {
			return 0
		}

		method puedeLlamar() {
			return tieneCredito

		}

		method neoCredito(valor) {
			tieneCredito = valor
		}
}


 
object lincolnHawk { // pesa 500kg cuando esta con el camion + cada acoplado, cada acoplado pesa 500kg, tambien tiene bici que pesa 10kg. no puede llamar
        var pesoPropio = 70
        var vehiculoActual = bicicleta

    method peso() {
       return pesoPropio + vehiculoActual.peso()
  }

    method puedeLlamar() {
        return false
  }

	method usarCamion() {
      vehiculoActual = camion
  }

    method usarBici() {
      vehiculoActual = bicicleta
  }
}

object bicicleta { 
	method peso() {
		return 10
	}
}

object camion {
  var cantidadDeAcoplados = 0

  method peso() {
    return 500 + 500 * cantidadDeAcoplados
  }
}

object paqueteDeGeorge {
  var estaPago = true
 
  method paquetePagado() {
	return estaPago
  }

  method setPago(valor) {
    estaPago = valor
  }
}

object sistemaDeMensajeria { // dando un paquete, un mensajero y el destino, retorna si puede o no entregar el paquete
  method puedeEntregar(paquete, mensajero, destino) {
    return paquete.paquetePagado() && destino.aceptaA(mensajero)
  }
}