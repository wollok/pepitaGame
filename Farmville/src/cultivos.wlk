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


class Maiz extends Cultivo {
	method imagenCultivo() = "caja.png"
	method oroBase() = 150
}

class Trigo extends Cultivo {
	method imagenCultivo() = "muro.png"
	method oroBase() = 100
}
