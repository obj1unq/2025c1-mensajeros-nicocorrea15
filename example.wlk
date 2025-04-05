object puenteDeBrooklyn {
       // solo pasan los que pesan hasta 1000
	   const pesoSoportado = 1000

}

object laMatrix {
  // solo pasar los que pueden llamar
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
   const peso = 0

        method peso() {
			return 0
		}

		method puedeLlamar() {
			return false

		}
}


 
object lincolnHawk { // pesa 500kg cuando esta con el camion + cada acoplado, cada acoplado pesa 500kg, tambien tiene bici que pesa 10kg. no puede llamar
  
    method peso() {
       return vehiculoActual + acoplados
	}

	method puedeLlamar() {
	      return false 
	}

	method cambiarVehiculo() {
         var vehiculoActual = camion
	} 

	method bicicleta() {
		const peso = 10
	}

	method camion() {
	  var peso = 500 

	}
}

// Contexto
// Steven Spielberg está por cumplir años y George Lucas quiere realizarle un regalo. 
// Por eso compró un álbum de figuritas de ET y lo envolvió en un paquete para ser entregado por una empresa de mensajería, 
// que ofrece un menú de distintos mensajeros para llevar un paquete a distintos lugares. George pagó $10 por el envío, 
// pero no estaba seguro del lugar en el cual está Steven, es posible que ande paseando por Brooklyn o que esté haciendo de las suyas en 
// la matrix.
 
// Requerimiento del sistema:
// La empresa utiliza un sistema desarrollado en objetos para identificar que mensajero llevará ese paquete.
 
// De todos los requerimientos que tiene el sistema, en este ejercicio sólo se pide resolver el siguiente: 
// Determinar si ese paquete puede ser entregado por un mensajero en un determinado destino. 
// Pero cumplir el objetivo no es tan sencillo, porque hay varias reglas que respetar.

// Reglas
// Para que el paquete pueda ser entregado debe estar pago. En el ejemplo mencionado está pago, pero no siempre es así. Puede variar.
// Cada destino le pone restricciones a los mensajeros que quieren llegar a él. Existen dos destinos posibles:

// Puente de Brooklyn: deja pasar a todo lo que pese hasta una tonelada (1000 kilos).

// La Matrix: deja entrar a quien pueda hacer una llamada.
// Por el momento, nuestra empresa de mensajería tiene 3 mensajeros, con estas características:

// Chuck Norris: Chuck siempre pesó y seguirá pesando 900 kg por toda la eternidad. 
// Puede llamar a cualquier persona del universo con sólo llevarse el pulgar al oído y el meñique a la boca.

// Neo: Neo vuela, así que no pesa nada. Y anda con celular, el muy canchero. El tema es que a veces no puede llamar porque se queda sin crédito.

// Lincoln Hawk: Tiene un peso propio que varía con el tiempo. Viaja en bicicleta ó camión.  
// A ese peso propio se le suma el peso de su vehículo. La bici pesa 10kg. En cambio, el camión pesa media tonelada. 
// Si el camión tiene acoplados, hay que agregar media tonelada adicional por cada uno de ellos.  Hawk no tiene un mango, gracias que tiene cubiertas, y no puede llamar a nadie.

// Aclaración: Para el cálculo del peso, el peso del paquete es despreciable.
 
// Algunos casos de prueba:
// El paquete de George que no está pago no puede ser llevado por Neo a la matrix.
// El paquete de George que sí está pago puede ser llevado por Chuck a la matrix
// El paquete de George que sí está pago no puede ser llevado por Lincoln Hawk (80kg) a Brooklyn si es que utiliza un camión con un acoplado .
// La entrega anterior puede hacerse si Lincoln Hawk usa una bicicleta

