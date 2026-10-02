import wollok.game.*

object pepita {

	var property energia = 10000 //El getter y setter solo lo necesito para testear
	var position = game.origin()

	method image() { //metodo necesario para wollok game
		return "pepita.png"
	}

	method position() { //metodo necesario para wollok game
		return position
	}

	method position(_position) { //el setter solo lo necesito para testear
		position = _position 
	}


	// method text() { //metodo opcional para mostrar un texto en wollok game
	// 	return energia.toString()
	// }

	// method textColor() { //metodo opcional para definir el color del texto (RGBA)
	// 	return "FF0000FF"
	// }
	
	method volar(distancia) {
		self.validarVolar(distancia)
    	energia = energia - self.energiaQueGastaAlVolar(distancia)
  	}

	method validarVolar(distancia) {
		if (not self.puedeVolar(distancia)) {
			self.error("No tengo energia para volar " + distancia)
		}
	}

	method puedeVolar(distancia) {
		return energia >= self.energiaQueGastaAlVolar(distancia)
	}

	method energiaQueGastaAlVolar(distancia) {
		return 10 + distancia/10
  	}
	
	method movete(direccion) {
		const nuevaPosition = direccion.siguiente(position)
		position = nuevaPosition
	}

	method mover(direccion) {
		const nuevaPosition = direccion.siguiente(position) //No modifico la position en la primera linea porque volar podría lanzar error
		self.volar(10) //asume que cada celda está a 10 km
		self.intentarMoverseA(dirección) //ahora si puedo modificar la posicion
	}

	method intentarMoverseA(nuevaPosicion) {
        // Buscamos si hay alguna pared en la posición a la que queremos ir
        const hayPared = game.colliders(nuevaPosicion).any({ objeto => objeto.className() == "muro" })
        
        // Si NO hay pared, nos movemos
        if (not hayPared) {
            position = nuevaPosicion
        }
    }
}



