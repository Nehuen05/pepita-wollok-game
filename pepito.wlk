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
        if ()
        
        // Solo cambia la posición si está libre
        else (not hayPared) {
            position = nuevaPosicion
        }
    }
}