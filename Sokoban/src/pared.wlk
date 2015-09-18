
class Pared {
	var posicion
	
	new () {
	}
	
	method movete(direccion) {
		throw new GameException("No puedes mover las paredes.")
	}
	
	method puedePisarte(_) = false
	
	method getImagen() = "muro.png"
	method getPosicion() = posicion
	method setPosicion(pos) {posicion = pos}
}