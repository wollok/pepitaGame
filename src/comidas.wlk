class Comestible {
	method llego(alguien) {
		alguien.come(self)
		game.removeVisual(self)
	}	
}

object manzana inherits Comestible {
	const property imagen = "manzana.png"
	method energia() = 50
}

object alpiste inherits Comestible {
	const property imagen = "alpiste.png"
	method energia() = 1000
}
