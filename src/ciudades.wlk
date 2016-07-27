class Ciudad {
	const imagen = "map_point.png"
	const posicion 
	const km
	const nombre 
	
	constructor(_posicion, _nombre, _km) {
		posicion = _posicion 
		nombre = _nombre 
		km = _km
	}
	
	method distancia(ciudad) = (self.km() - ciudad.km()).abs() 
	
	method km() = km

	method getPosicion() = posicion
}

object buenosAires inherits Ciudad(new Position(1, 1), "Buenos Aires", 0) { }

object villaGesell inherits Ciudad(new Position(8, 3), "Villa Gesell", 100) { }