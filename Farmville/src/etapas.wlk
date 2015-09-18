object ninio {

	method crece(cultivo) { cultivo.setEtapa(adulto) } 

	method oroPorCosecha(_) = 0
	
	method getImagen(_) = "almacenaje.png"
}

object adulto {
	
	method crece(cultivo) { cultivo.setEtapa(muerto) } 
	
	method oroPorCosecha(cultivo) = cultivo.oroBase()
	
	method getImagen(cultivo) = cultivo.imagenCultivo()
}

object muerto {
	
	method crece(_) { "No hace nada" } 
	
	method oroPorCosecha(_) = 0
	
	method getImagen(_) = "flying_bird.png"
}
