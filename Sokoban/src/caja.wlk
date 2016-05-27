
class Caja {
	var posicion
	var llegadas
	
	constructor(_posicion, _llegadas) {
		llegadas = _llegadas
		posicion = _posicion
	}
	

	method movete(direccion) {
		self.validarLugarLibre(direccion) 
		direccion.move(posicion)
	}

	method validarLugarLibre(direccion) {
		const posAlLado = direccion.posicionDeAlLado(posicion) 
		var lugarLibre = wgame.getObjectsIn(posAlLado)
			.all{ obj => obj.puedePisarte(self) } 
		
		if (!lugarLibre) 
			throw new Exception("Algo traba la caja.")
	}
	
	method puedePisarte(_) = false

	method getImagen() {
		if (self.estaBienPosicionada())
			return "caja_ok.png"
		
		return "caja.png"
	}
	
	method estaBienPosicionada() {
		return llegadas
			.map{ llegada => llegada.getPosicion() }
			.contains(self.getPosicion()) //TODO: Redefinier el (==) en Position!
	}
	
	method getPosicion() = posicion
	method setPosicion(pos) {posicion = pos}
}