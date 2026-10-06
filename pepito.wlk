object pepito{
    var position = game.origin()
    const imagen = "hijo.png"

    method intentarMoverseA(nuevaPosicion) {
        // Buscamos si hay alguna pared en la posición a la que queremos ir
        const hayPared = game.colliders(nuevaPosicion).any({ objeto => objeto.className() == "muro" })
        
        // Si NO hay pared, nos movemos
        if (not hayPared) {
            position = nuevaPosicion
        }//self.intentarMoverseA(nuevaPosition)
    }
}