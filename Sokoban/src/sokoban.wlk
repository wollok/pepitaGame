import direcciones.*

object sokoban {
	var posicion = new Position(4, 3)
	var direccion = arriba

	method empuja(unElemento) {
		try
			unElemento.movete(direccion)
		catch e : Exception {
			console.println(e)
			self.retrocede()
		}
	}
	
	method retrocede() {
		direccion.opuesto().move(posicion)
	}
	
	method retrocedeCon(caja) {
		self.retrocede()
		caja.movete(direccion.opuesto())
	}

	method irArriba() {
		direccion = arriba
		self.avanzar()
	}

	method irAbajo() {
		direccion = abajo
		self.avanzar()
	}

	method irIzquierda() {
		direccion = izquierda
		self.avanzar()
	}

	method irDerecha() {
		direccion = derecha
		self.avanzar()
	}
	
	method avanzar() {
		direccion.move(posicion)
	}
	
	method setDireccion(unaDireccion) {
		direccion = unaDireccion
	}
	
	method getImagen() = "jugador.png"
	method getPosicion() = posicion
	method setPosicion(_posicion) {
		posicion = _posicion
	} 
}