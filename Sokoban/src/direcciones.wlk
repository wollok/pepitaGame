
object izquierda { 
	method move(position) { position.moveLeft(1) } 
	method opuesto() = derecha
}

object derecha { 
	method move(position) { position.moveRight(1) } 
	method opuesto() = izquierda
}

object abajo { 
	method move(position) { position.moveDown(1) } 
	method opuesto() = arriba
}

object arriba { 
	method move(position) { position.moveUp(1) } 
	method opuesto() = abajo
}
