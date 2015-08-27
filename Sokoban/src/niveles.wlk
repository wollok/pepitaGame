import caja.*
import pared.*
import sokoban.*
import llegada.*


object nivel1 {
	
	method cargar() {
//	SOKOBAN
		sokoban.setPosicion(new Position(4, 3))
		
		
//	PAREDES
		val ancho = wgame.getWidth() - 1
		val largo = wgame.getHeight() - 1
	
		var posParedes = #[]
		(0 .. ancho).forEach[ n | posParedes.add(new Position(n, 0)) ] // bordeAbajo
		(0 .. ancho).forEach[ n | posParedes.add(new Position(n, largo)) ] // bordeArriba 
		(0 .. largo).forEach[ n | posParedes.add(new Position(0, n)) ] // bordeIzq 
		(0 .. largo).forEach[ n | posParedes.add(new Position(ancho, n)) ] // bordeDer
		
		posParedes.addAll(#[new Position(3,5), new Position(4,5), new Position(5,5)])
		posParedes.addAll(#[new Position(1,2), new Position(2,2),new Position(6,2), new Position(7,2)])
		posParedes.addAll(#[new Position(1,1), new Position(2,1),new Position(6,1), new Position(7,1)])
	
		var paredes = posParedes.map[ p | new Pared(p) ]
	
		
//	LLEGADAS
		var llegadas = #[new Position(4, 4), new Position(4, 3),new Position(4, 2), new Position(4, 1)]
			.map[ p | new Llegada(p) ]
		
			
//	CAJAS
		var cajas = #[new Position(2, 4), new Position(6, 4), new Position(4, 2), new Position(5, 2)]
			.map[ p | new Caja(p, llegadas) ]

		
//	VISUALES
		llegadas.forEach[ llegada | wgame.addVisual(llegada) ]
		paredes.forEach[ pared | wgame.addVisual(pared) ]
		cajas.forEach[ caja | wgame.addVisual(caja) ]
		wgame.addVisual(sokoban)
		

//	TECLADO
		wgame.whenKeyPressedDo(19, [ sokoban.irArriba() ])
		wgame.whenKeyPressedDo(20, [ sokoban.irAbajo() ])
		wgame.whenKeyPressedDo(21, [ sokoban.irIzquierda() ])
		wgame.whenKeyPressedDo(22, [ sokoban.irDerecha() ])

		wgame.whenKeyPressedDo(46, [ this.restart() ])
		wgame.whenKeyPressedDo(-1, [ this.comprobarSiGano(cajas) ])
		
		
//	COLISIÓNES
		wgame.whenCollideDo(sokoban, [ e | sokoban.empuja(e) ])
	}
	
	method restart() {
		//wgame.clear()
		//this.cargar()
	}
	
	method comprobarSiGano(cajas) {
		if (cajas.forAll[ c | c.estaBienPosicionada() ]) {
			console.println("GANASTE!") 
			//wgame.clear()
		}
	}
}