object buenosAires {

	method distancia(ciudad) = (this.km() - ciudad.km()).abs() 
	
	method km() = 0
	
	method getImagen() = "caja.png"
	method getPosicion() = new Position(1, 1)
}

object villaGesell {

	method distancia(ciudad) = (this.km() - ciudad.km()).abs() 
	
	method km() = 100

	method getImagen() = "caja.png"
	method getPosicion() = new Position(8, 2)
}