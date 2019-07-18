import wollok.game.*

class Comestible {
	method llego(alguien) {
		alguien.come(self)
		game.removeVisual(self)
	}	
}

object manzana inherits Comestible {
	const property image = "manzana.png"
	method energia() = 50
}

object alpiste inherits Comestible {
	const property image = "alpiste.png"
	method energia() = 1000
}
