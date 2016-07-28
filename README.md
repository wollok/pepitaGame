# Pepita Game
Clásico ejemplo de Pepita para jugar con Wollok Game (Wollok v1.5.0)

## Cómo ejecutarlo
Para ejecutar el juego solo hace falta localizar el archivo `pepita-game.wpgm` y correrlo (Botón Derecho -> Run as -> Wollok program). En él se encuentra el programa _PepitaGame_ que configura y al final inicia el proceso que levanta Wollok Game.

## Controles
Como podemos chusmear en el programa _PepitaGame_, allí se configuran acciones que se ejucan al precionar alguna tecla en particular:
```XTend
//	TECLADO
	A.onPressDo{ pepita.come(alpiste) }
	M.onPressDo{ pepita.come(manzana) }
	
	V.onPressDo{ pepita.volaHacia(villaGesell) }
	B.onPressDo{ pepita.volaHacia(buenosAires) }
```
Esto significa que:
- Al presionar la tecla **A**, pepita **come alpiste**.
- Al presionar la tecla **M**, pepita **come manzana**.
- Al presionar la tecla **V**, pepita **viaja hasta Villa Gesell**.
- Al presionar la tecla **B**, pepita **viaja hasta Bunos Aires**.

Que lo disfrutes!
