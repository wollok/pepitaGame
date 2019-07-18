import wollok.game.*

class Ciudad {
	const property image = "ciudad.png"
	const property nombre = null
	const property position = null
	
	method llego(alguien) {
		if (alguien.ciudad() != self) {
			alguien.ciudad(self)
			game.say(alguien,"Llegué a " + nombre)
		}
	}
}

object ciudades {
	const property villaGesell = new Ciudad(
		nombre = "Villa Gesell",
		position = game.at(8,3)
	)

	const property buenosAires = new Ciudad(
		nombre = "Buenos Aires",
		position = game.at(1,1)
	)
}
