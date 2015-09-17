
class Llegada {
	var posicion
	
	new (_posicion) {
		posicion = _posicion
	}
	
	new () {}
	
	method movete(direccion) { /* No pasa naranja */ }
	
	method puedePisarte(_) = true
	
	method getImagen() = "almacenaje.png"
	method getPosicion() = posicion
	method setPosicion(pos) {posicion = pos}
}