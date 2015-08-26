import sokoban.*

class Caja {
	var posicion
	var imagen = "caja.png"

	new (_posicion) {
		posicion = _posicion
	}

	method movete(direccion) {
		direccion.move(posicion)
	}
	
	method teAplasta(caja) {
		sokoban.retrocedeCon(caja)
	}
	
	method getImagen() = imagen
	method getPosicion() = posicion
	method setImagen(_imagen) {
		imagen = _imagen
	}
}