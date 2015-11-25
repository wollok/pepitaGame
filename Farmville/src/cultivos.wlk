import etapas.*

class Cultivo {
	var posicion
	var etapa = ninio
	
	method crece() { etapa.crece(this) }
	
	method cosechate(granjero) {
		granjero.sumaOro(etapa.oroPorCosecha(this))
		etapa = muerto
	}
	
	method setEtapa(_edad) { etapa = _edad }
	method getImagen() = etapa.getImagen(this)
	method getPosicion() = posicion
	method setPosicion(_posicion) { posicion = _posicion }
}


class Maiz inherits Cultivo {
	method imagenCultivoAdulto() = "corn_adult.png"
	method imagenCultivoNinio() = "corn_baby.png"
	method oroBase() = 150
}

class Trigo inherits Cultivo {
	method imagenCultivoAdulto() = "wheat_adult.png"
	method imagenCultivoNinio() = "wheat_baby.png"
	method oroBase() = 100
}

class Tomaco inherits Cultivo {
	method imagenCultivoAdulto() = "tomaco_adult.png"
	method imagenCultivoNinio() = "tomaco_baby.png"
	method oroBase() = 50
}
