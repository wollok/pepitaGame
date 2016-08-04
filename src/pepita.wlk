object pepita {
	const imagen = "pepita.png" 
	const posicion = game.at(2,0)
	var energia = 50
		
	method energia() {
		return energia
	}
	
	method podesVolar() {
		return energia > 50
	}
	
	method come(gramos) {
		energia = energia + 4 * gramos
	}
	
	method vola(kms) {
		if (self.podesVolar()) {
			energia = energia - 8 * kms
			posicion.moveUp(1)			
		}
	}
	
	method canta() {
		game.say(self, "pri pri pri")	
	}
}
