object buenosAires {
	var posicion

	method distancia(ciudad) = (this.km() - ciudad.km()).abs() 
	
	method km() = 0
	
	method getImagen() = "caja.png"
	method getPosicion() = posicion
	method setPosicion(pos) {posicion = pos}
}

object villaGesell {
	var posicion

	method distancia(ciudad) = (this.km() - ciudad.km()).abs() 
	
	method km() = 100

	method getImagen() = "caja.png"
	method getPosicion() = posicion
	method setPosicion(pos) {posicion = pos}
}