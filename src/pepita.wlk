object pepita {
	const posicion = game.at(2,0)
	var energia = 50

	method energia() {
		return energia
	}
	
	method imagen() {
		if (energia < 150) 
			return "pepita.png" 
			
		if (energia < 300) 
			return "pepita1.png"
			
		return "pepita2.png"
	} 
	
	method podesVolar() {
		return energia > 50
	}
	
	method volarMucho() {
		energia = 0
	}
	
	method come(gramos) {
		energia = energia + 4 * gramos
	}
	
	method descansa(tiempo) {
		energia = energia + tiempo * 2
		posicion.y(0) 	
	}
	
	method vola(kms) {
		if (self.podesVolar()) {
			energia = energia - 8 * kms
			posicion.moveUp(1)			
		} else {
			game.say(self, "No puedo volar")
			game.say(self, "me falta energia. ")
			game.say(self, "TIP: dame de comer")
		}
	}
	
	method canta() {
		game.say(self, "pri pri pri")	
	}
}

object pepona {
	const imagen = "pepona.png" 
	var posicion = game.at(0,0)
	var vecesQueVolo = 0
	
	method canta() {
		game.say(self, "Porque yo\nno quiero trabajar")
		game.say(self, "No quiero ir a estudiar")
		game.say(self, "No me quiero casar")	
	}

	method vola(kms) {
		vecesQueVolo++
		posicion.moveUp(1)
		posicion.moveRight(1)
	}
	
	method descansa(tiempo) {
		if (tiempo.even()) {
			posicion = game.at(0,0)
		} else {
			posicion = game.at(1,0)
		}
	}
}