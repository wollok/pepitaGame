import ciudades.*

object pepita {
	var energia = 100
	var ciudad = buenosAires

	method come(comida) {
		energia = energia + comida.energia()
	}
	
	method volaHacia(unaCiudad) {
		if (!(ciudad == unaCiudad))
			energia = energia - this.energiaDeViajarHasta(unaCiudad)
		ciudad = unaCiudad
	}
	
	method energiaDeViajarHasta(unaCiudad) = 15 + 5 * ciudad.distancia(unaCiudad)
	
	method getImagen() = "flying_bird.png"
	method getPosicion() = ciudad.getPosicion()
}