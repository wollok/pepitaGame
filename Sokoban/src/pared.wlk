import sokoban.*

class Pared {
	val posicion
	
	new (_posicion) {
		posicion = _posicion
	}

	method movete(direccion) {
//			throw new GameException("No puedes mover las paredes!")
		sokoban.retrocede()
	}
	
	method teAplasta(caja) {
		sokoban.retrocedeCon(caja)
	}
	
	method getImagen() = "muro.png"
	method getPosicion() = posicion
}