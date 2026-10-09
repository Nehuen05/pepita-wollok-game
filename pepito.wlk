object pepito{
    var position = game.origin()

	method image() { //metodo necesario para wollok game
		return "pepita.png"
	}
    method position() { //metodo necesario para wollok game
		return position
	}

    method esSolido() { return false }

    method position(_position) { //el setter solo lo necesito para testear
		position = _position 
	}

    method hayMurosAdelante(posicion) {
      return game.getObjectsIn(posicion).any({ objeto => objeto.esSolido() })
    }

    method intentarMoverseA(direccion) {
      const nuevaPosicion = direccion.siguiente(self.position())
      if (not self.hayMurosAdelante(nuevaPosicion)) {
            position = nuevaPosicion
      }
    }
}