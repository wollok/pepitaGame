import cultivos.*

object granjero {
	var oro = 0
	var cultivos = #[]
	var posicion
	
	method plantaMaiz() {
		this.planta(new Maiz())
	}

	method plantaTrigo() {
		this.planta(new Trigo())
	}

	method planta(cultivo) {
		posicion.drawElement(cultivo)
		cultivos.add(cultivo)
	}
	
	method rega() {
		wgame.getObjectsIn(posicion)
			.filter[ obj | !(this == obj) ] // TODO Que paja
			.forEach[ cultivo | cultivo.crece() ]
	}
	
	method cosechaTodo() {
		cultivos.forEach[ c | c.cosechate(this) ]
		cultivos.clear()
	}
	
	method sumaOro(cantidad) { oro += cantidad }

	method getImagen() = "jugador.png"
	method getPosicion() = posicion
	method setPosicion(_posicion) { posicion = _posicion }
}
