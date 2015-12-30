class Arbusto {
	var posicion
	
	new(_posicion) {
		_posicion.drawElement(this)
		wgame.whenCollideDo(this, { granjero => this.empuja(granjero) })
	}

	method getImagen() = "fence02.png"
	method getPosicion() = posicion
	method setPosicion(_posicion) { posicion = _posicion }
}

class ArbustoArriba inherits Arbusto {
	new(_posicion) = super(_posicion)
	
	method empuja(granjero) {
		granjero.getPosicion().moveDown(1)
	}
}

class ArbustoAbajo inherits Arbusto {
	new(_posicion) = super(_posicion)
	
	method empuja(granjero) {
		granjero.getPosicion().moveUp(1)
	}
}

class ArbustoIzquierda inherits Arbusto {
	new(_posicion) = super(_posicion)
	
	method empuja(granjero) {
		granjero.getPosicion().moveRight(1)
	}
}

class ArbustoDerecha inherits Arbusto {
	new(_posicion) = super(_posicion)
	
	method empuja(granjero) {
		granjero.getPosicion().moveLeft(1)
	}
}
