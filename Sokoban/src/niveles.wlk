import caja.*
import pared.*
import sokoban.*
import llegada.*


object nivel1 {
	
	method cargar() {
		
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
	
		var paredes = posParedes.map[ p |{
					val pared = new Pared()
					p.drawElement(pared)
					return pared
				}
			]
	
		
//	LLEGADAS
		var llegadas = #[new Position(4, 4), new Position(4, 3),new Position(4, 2), new Position(4, 1)]
			.map[ p |{
					val llegada = new Llegada()
					p.drawElement(llegada)
					return llegada
				}
			]

//	CAJAS
		var cajas = #[new Position(2, 4), new Position(6, 4), new Position(4, 2), new Position(5, 2)]
			.map[ p |{
					val caja = 	new Caja(llegadas)
					p.drawElement(caja)
					return caja
				}
			]
			
//	SOKOBAN

		new Position(4, 3).drawElement(sokoban)

//	TECLADO
		keys.onPress("up").do([ sokoban.irArriba() ])
		keys.onPress("down").do([ sokoban.irAbajo() ])
		keys.onPress("left").do([ sokoban.irIzquierda() ])
		keys.onPress("right").do([ sokoban.irDerecha() ])

		keys.onPress("R").do([ this.restart() ])
		keys.onPress("ANY_KEY").do([ this.comprobarSiGano(cajas) ])
		
		
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