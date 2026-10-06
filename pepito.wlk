object pepito{
    var position = game.center()
    
    method imagen() {
        return "hijo.png"
    }
    method position() { //metodo necesario para wollok game
		return position
	}

    method intentarMoverseA(nuevaPosicion) {
        // Mira si hay una Pared en el lugar al que quiere ir
        position = nuevaPosicion
    }
}