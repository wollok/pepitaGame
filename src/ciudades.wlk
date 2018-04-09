object buenosAires {
	method imagen() = "map_point.png"
	method nombre() = "Buenos Aires"
	method posicion() = game.at(1, 1)
}

object villaGesell {
	method imagen() = "map_point.png"
	method nombre() = "Villa Gesell"
	method posicion() = game.at(8, 3)
}

object mapa {
	method distancia(unaCiudad, otraCiudad) {
		const deltaX = (unaCiudad.posicion().x() - otraCiudad.posicion().x())
		const deltaY = (unaCiudad.posicion().y() - otraCiudad.posicion().y())
		return (deltaX.square() + deltaY.square()).squareRoot()
	}
}
