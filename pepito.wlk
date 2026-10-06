object pepito{
    var position = game.origin()
    
    method imagen() {
        return "hijo.png"
    }

    method intentarMoverseA(nuevaPosicion) {
        // Mira si hay una Pared en el lugar al que quiere ir
        const hayPared = game.colliders(nuevaPosicion).any({ objeto => objeto.className() == "Pared" })
        
        // Solo cambia la posición si está libre
        if (not hayPared) {
            position = nuevaPosicion
        }
    }
}