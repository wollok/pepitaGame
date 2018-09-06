object manzana {
	const property energia = 80
	const property imagen = "manzana.png"
	method teEncontroEntrenador(quien) {
		quien.encontrarComida(self)
	}	
}

object alpiste {
	const property energia = 5
	const property imagen = "alpiste.png"
	method teEncontroEntrenador(quien) {
		quien.encontrarComida(self)
	}	
}
