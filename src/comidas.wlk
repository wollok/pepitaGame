object manzana {
	method energia() = 50
}

object alpiste {
	method energia() = 1000
	method llego(alguien) {
		alguien.come(self)
		game.removeVisual(self)
	}
}
