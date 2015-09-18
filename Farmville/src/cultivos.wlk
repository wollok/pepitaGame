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
	method imagenCultivoAdulto() = "corn_adult.png"
	method imagenCultivoNinio() = "corn_baby.png"
	method oroBase() = 150
}

class Trigo extends Cultivo {
	method imagenCultivoAdulto() = "wheat_adult.png"
	method imagenCultivoNinio() = "wheat_baby.png"
	method oroBase() = 100
}
class Tomaco extends Cultivo {
	method imagenCultivoAdulto() = "tomaco_adult.png"
	method imagenCultivoNinio() = "tomaco_baby.png"
	method oroBase() = 1000
}