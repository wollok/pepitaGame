object ninio {

	method crece(cultivo) { cultivo.setEdad(adulto) } 

	method oro(_) = 0
	
	method getImagen(cultivo) = cultivo.imagenCultivoNinio()
}

object adulto {
	
	method crece(cultivo) { cultivo.setEdad(muerto) } 
	
	method oro(cultivo) = cultivo.oroBase()
	
	method getImagen(cultivo) = cultivo.imagenCultivoAdulto()
}

object muerto {
	
	method crece(_) { "No hace nada" } 
	
	method oro(_) = 0
	
	method getImagen(_) = "dead_plant.png"
}
