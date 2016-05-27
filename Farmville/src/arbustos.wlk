class Arbusto {
	var posicion
	
	constructor(_posicion) {
		_posicion.drawElement(self)
		wgame.whenCollideDo(self, { granjero => self.empuja(granjero) })
	}

	method getImagen() = "fence02.png"
	method getPosicion() = posicion
	method setPosicion(_posicion) { posicion = _posicion }
}

class ArbustoArriba inherits Arbusto {
	constructor(_posicion) = super(_posicion)
	
	method empuja(granjero) {
		granjero.getPosicion().moveDown(1)
	}
}

class ArbustoAbajo inherits Arbusto {
	constructor(_posicion) = super(_posicion)
	
	method empuja(granjero) {
		granjero.getPosicion().moveUp(1)
	}
}

class ArbustoIzquierda inherits Arbusto {
	constructor(_posicion) = super(_posicion)
	
	method empuja(granjero) {
		granjero.getPosicion().moveRight(1)
	}
}

class ArbustoDerecha inherits Arbusto {
	constructor(_posicion) = super(_posicion)
	
	method empuja(granjero) {
		granjero.getPosicion().moveLeft(1)
	}
}
