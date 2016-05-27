
class Llegada {
	var posicion
	
	constructor (_posicion) {
		posicion = _posicion
	}
	
	method movete(direccion) { /* No pasa naranja */ }
	
	method puedePisarte(_) = true
	
	method getImagen() = "almacenaje.png"
	method getPosicion() = posicion
	method setPosicion(pos) {posicion = pos}
}