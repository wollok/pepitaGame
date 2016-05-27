object buenosAires {
	const posicion = new Position(1, 1)

	method distancia(ciudad) = (self.km() - ciudad.km()).abs() 
	
	method km() = 0
	
	method getImagen() = "caja.png"
	method getPosicion() = posicion
}

object villaGesell {
	const posicion = new Position(8, 3)

	method distancia(ciudad) = (self.km() - ciudad.km()).abs() 
	
	method km() = 100

	method getImagen() = "caja.png"
	method getPosicion() = posicion
}