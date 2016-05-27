import cultivos.*

object granjero {
	var oro = 0
	var cultivos = []
	var posicion = new Position(3, 3)
	
	method plantaMaiz() {
		self.planta(new Maiz())
	}

	method plantaTrigo() {
		self.planta(new Trigo())
	
	}
	method plantaTomaco() {
		self.planta(new Tomaco())
	}

	method planta(cultivo) {
		posicion.clone().drawElement(cultivo)
		cultivos.add(cultivo)
	}
	
	method rega() {
		var cultivosARegar = posicion.allElements()
			.filter { obj => !(self == obj) }
			
		if (cultivosARegar.isEmpty())
			throw new Exception("Solo las plantas se pueden regar!")
			
		cultivosARegar.forEach { cultivo => cultivo.crece() }
	}
	
	method cosechaTodo() {
		cultivos.forEach { c => c.cosechate(self) }
		cultivos.clear()
	}
	
	method sumaOro(cantidad) { oro += cantidad }

	method getImagen() = "player.png"
	method getPosicion() = posicion
	method getOro() = oro
	method setPosicion(_posicion) { posicion = _posicion }
}
