import ciudades.*

object pepita {
	var energia = 100
	var ciudad = buenosAires
	var property posicion = ciudad.posicion()

	method come(comida) {
		energia = energia + comida.energia()
	}
	
	method volaHacia(unaCiudad) {
		if (!(ciudad == unaCiudad)) {
			energia = energia - self.energiaParaViajarHasta(unaCiudad)
		}
		ciudad = unaCiudad
		posicion = ciudad.posicion()
	}
	
	method energiaParaViajarHasta(unaCiudad) = 15 + 5 * mapa.distancia(ciudad, unaCiudad)
	
	method imagen() = "flying_bird.png"
}