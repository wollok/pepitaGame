import wollok.game.*
import comidas.*
import pepita.*

object roque {
	var property posicion = game.at(4,4)
	var comida = null
	
	method imagen() = "roque.png"
		
	method resolverEncuentroCon(objeto) {
		objeto.teEncontroEntrenador(self)
	}
	
	method encontrarComida(laComida) {
		game.removeVisual(laComida)
		if (comida != null) {
			game.addVisualIn(comida, self.unoALaIzquierda())
		}
		comida = laComida
	}
	
	method unoALaIzquierda() {
		return game.at(self.posicion().x() - 1, self.posicion().y())
	}
	
	method alimentarAve(ave) {
		if (comida != null) {
			ave.come(comida)
			self.soltarComida()
		}
	}
	
	method soltarComida() {
		const xc = 3
		const yc = new Range(4,8).find({n => game.getObjectsIn(game.at(xc,n)).isEmpty()})
		game.addVisualIn(comida, game.at(xc,yc))
		comida = null
	}
}
