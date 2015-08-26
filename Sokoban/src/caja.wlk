
class Caja {
	var posicion
	var imagen = "caja.png"

	new(_posicion) {
		posicion = _posicion
	}

	method movete(direccion) {
		this.validarLugarLibre(direccion) 
		direccion.move(posicion)
	}

	method validarLugarLibre(direccion) {
		val posAlLado = direccion.posicionDeAlLado(posicion) 
		var lugarLibre = wgame.getObjectsIn(posAlLado)
			.forAll[ obj | obj.puedePisarte(this) ] 
		
		if (! lugarLibre) 
			throw new GameException("Algo traba la caja.")
	}
	
	method puedePisarte(_) = false

	method getImagen() = imagen
	method getPosicion() = posicion
	method setImagen(_imagen) {
		imagen = _imagen
	}
}