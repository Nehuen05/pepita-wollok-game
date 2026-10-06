object pepito{
    var position = game.origin()
    
    method imagen() {
        return "hijo.png"
    }
    method position() { //metodo necesario para wollok game
		return position
	}

    method hayMurosAdelante(posicion) {
      return game.getObjectsIn(posicion) ==  "Muro"
    }

    method intentarMoverseA(direccion) {
      const nuevaPosicion = direccion.siguiente(self.position())
      if (not self.hayMurosAdelante(nuevaPosicion) ){
        position = nuevaPosicion
      }
    }
}