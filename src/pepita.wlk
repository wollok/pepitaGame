object pepita {
	const imagen = "pepita.png"
	var _ciudadActual = buenosAires
	var energia = 100

	method energia() = energia

	method come(comida) {
		energia = energia + comida.energia()
	}
	
	method vola(kms) {
		energia = energia - 5 * kms
	}
	
	method volaHacia(unaCiudad) {
		self.vola(_ciudadActual.distancia(unaCiudad))
		_ciudadActual = unaCiudad
	}	
	
	method posicion() = _ciudadActual.posicion()
}


object manzana {
	method energia() = 50
}

object alpiste {
	method energia() = 100
}


object buenosAires { 
	const imagen = "ciudad.png"

	method distancia(ciudad) {
		return (self.km() - ciudad.km()).abs() 
	}
	 
	method km() = 0
	method posicion() = game.at(1, 1) 
}

object villaGesell { 
	const imagen = "ciudad.png"

	method distancia(ciudad) {
		return (self.km() - ciudad.km()).abs() 
	}
	 
	method km() = 15
	method posicion() = game.at(3, 4) 
}