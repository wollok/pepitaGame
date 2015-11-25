import direcciones.*

object sokoban {
	var posicion = new Position(0, 0)
	var direccion = arriba

	method empuja(unElemento) {
		try
			unElemento.movete(direccion)
		catch e : Exception {
			console.println(e)
			this.retrocede()
		}
	}
	
	method retrocede() {
		direccion.opuesto().move(posicion)
	}
	
	method retrocedeCon(caja) {
		this.retrocede()
		caja.movete(direccion.opuesto())
	}

	method irArriba() {
		direccion = arriba
		this.avanzar()
	}

	method irAbajo() {
		direccion = abajo
		this.avanzar()
	}

	method irIzquierda() {
		direccion = izquierda
		this.avanzar()
	}

	method irDerecha() {
		direccion = derecha
		this.avanzar()
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