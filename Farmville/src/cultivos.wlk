import edades.*

class Cultivo {
	var posicion
	var edad = ninio
	
	method crece() { edad.crece(this) }
	
	method cosechate(granjero) {
		granjero.sumaOro(edad.oro(this))
		edad = muerto
	}
	
	method getImagen() = edad.getImagen(this)
	method setEdad(_edad) { edad = _edad }
	method getPosicion() = posicion
	method setPosicion(_posicion) { posicion = _posicion }
}


class Maiz extends Cultivo {
	method imagenCultivo() = "caja.png"
	method oroBase() = 150
}

class Trigo extends Cultivo {
	method imagenCultivo() = "muro.png"
	method oroBase() = 100
}
