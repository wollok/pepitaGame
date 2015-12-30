import cultivos.*

object granjero {
	var oro = 0
	var cultivos = []
	var posicion
	
	method plantaMaiz() {
		this.planta(new Maiz())
	}

	method plantaTrigo() {
		this.planta(new Trigo())
	
	}
	method plantaTomaco() {
		this.planta(new Tomaco())
	}

	method planta(cultivo) {
		posicion.drawElement(cultivo)
		cultivos.add(cultivo)
	}
	
	method rega() {
		var cultivosARegar = posicion.getAllElements()
			.filter { obj => !(this == obj) }
			
		if (cultivosARegar.isEmpty())
			throw new Exception("Solo las plantas se pueden regar!")
			
		cultivosARegar.forEach { cultivo => cultivo.crece() }
	}
	
	method cosechaTodo() {
		cultivos.forEach { c => c.cosechate(this) }
		cultivos.clear()
	}
	
	method sumaOro(cantidad) { oro += cantidad }

	method getImagen() = "player.png"
	method getPosicion() = posicion
	method getOro() = oro
	method setPosicion(_posicion) { posicion = _posicion }
}
