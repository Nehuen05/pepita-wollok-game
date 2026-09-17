import wollok.game.*

object silvestre {
    var position = game.origin()

    method image() {
        return "silvestre.png"
  } 

    method position() { //metodo necesario para wollok game
		return position
	}

    method position(_position) { //el setter solo lo necesito para testear
		position = _position 
	}

    method mover(direccion) {
		const nuevaPosition = direccion.siguiente(position) //No modifico la position en la primera linea porque volar podría lanzar error
		position = nuevaPosition //ahora si puedo modificar la posicion
	}

}