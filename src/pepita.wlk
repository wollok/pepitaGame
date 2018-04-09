import ciudades.*

object pepita {
	var energia = 100
	var ciudad = buenosAires

	method come(comida) {
		energia = energia + comida.energia()
	}
	
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
			energia = energia - self.energiaParaViajarHasta(unaCiudad)
			ciudad = unaCiudad
		}
	}
	
	method energiaParaViajarHasta(unaCiudad) = 15 + 5 * mapa.distancia(ciudad, unaCiudad)
	
	method imagen() = "pepita.png"
	method posicion() = ciudad.posicion()
}