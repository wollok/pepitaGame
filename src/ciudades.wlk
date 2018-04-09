object buenosAires {
	method imagen() = "ciudad.png"
	method nombre() = "Buenos Aires"
	method posicion() = game.at(1, 1)
}

object villaGesell {
	method imagen() = "ciudad.png"
	method nombre() = "Villa Gesell"
	method posicion() = game.at(8, 3)
}

object mapa {
	method distancia(unaCiudad, otraCiudad) {
		return unaCiudad.posicion().distance(otraCiudad.posicion())
	}
}
