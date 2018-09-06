import ciudades.*

object pepita {
	var property energia = 100
	var property ciudad = buenosAires 

//	var property posicion = game.at(3,3)
	var posicion = game.at(3,3)
	method posicion() { return posicion }
	method posicion(donde) { posicion = donde }
	 
//	method imagen() = "pepita.png"
	method imagen() {
		if (energia > 200) {
			return "pepita-gorda-raw.png"
		} else {
			return "pepita.png"
		}
	}

	method come(comida) {
		energia = energia + comida.energia()
	}
	
	method volaHacia(unaCiudad) {
		if (energia < self.energiaParaVolarHacia(ciudad)) {
			game.say(self, "Dame de comer primero!")
		} else if (ciudad != unaCiudad) {
			self.move(unaCiudad.posicion())
			ciudad = unaCiudad
		}
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method energiaParaVolarHacia(unaCiudad) {
		return self.energiaParaVolar(posicion.distance(unaCiudad.posicion()))
	}

	method move(nuevaPosicion) {
		energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
		self.posicion(nuevaPosicion)
	}	

	method teEncontroEntrenador(quien) {
		quien.alimentarAve(self)
	}	
}
