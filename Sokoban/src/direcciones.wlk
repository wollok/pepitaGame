
class Direccion {
	method posicionDeAlLado(posicion) {
		val nuevaPos = posicion.clone()
		this.move(nuevaPos)
		return nuevaPos
	}
	
	method move(_) { "Método abstracto" }
}

object izquierda extends Direccion { 
	override method move(position) { position.moveLeft(1) } 
	method opuesto() = derecha
}

object derecha extends Direccion { 
	override method move(position) { position.moveRight(1) } 
	method opuesto() = izquierda
}

object abajo extends Direccion { 
	override method move(position) { position.moveDown(1) } 
	method opuesto() = arriba
}

object arriba extends Direccion { 
	override method move(position) { position.moveUp(1) } 
	method opuesto() = abajo
}
