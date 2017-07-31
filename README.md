# Pepita Game
Clásico ejemplo de Pepita para aprender jugando con Wollok Game (Wollok v1.5.0)

![pepita-toma5](https://cloud.githubusercontent.com/assets/4098184/17400394/f277b580-5a1d-11e6-9462-0a7731365938.gif)

## Cómo jugar
Como podemos ver, nuestra carpeta `src` solo contiene un archivo `pepita.wlk` con la definición de nunestro objeto _pepita_.

Podemos correr el archivo desde consola: `Botón derecho -> Run as -> Run with REPL` y ya podemos jugar con pepita mandándole mensajes.

## ¿Y el juego?
Jugar directamente con la consola puede ser divertido, pero también es bastante abstracto y hasta a veces confuso. Es por eso que en esta etapa te proponemos levantar Wollok Game y agregar a pepita para poder ver qué hace más de cerca.
Para eso hay que usar el objeto **game** que ya viene con Wollok:
```XTend
game.start() // Levanta un proceso con la pantalla
game.addVisual(pepita) // Agrega un objeto para mostrarlo por pantalla
```
¡Ahora ya deberías poder ver a pepita!

## Qué mensajes entiende pepita
Dentro del archivo se encuentra declarado nuestro objeto pepita y dentro de él (o ella) los métodos que tiene. Por ahora pepita entiende los siguientes mensajes:

```xtend
pepita.energia() //consulta
pepita.podesVolar() //consulta
pepita.come(gramos) //acción
pepita.vola(kms) //acción
pepita.canta() //acción
```

Fijate cómo cambia pepita a medida que come o vuela.

Después podés ver el código y tratar de entenderlo. Dicen que uno no sabe si entendió realmente algo hasta que lo pone a prueba, extendé el comportamiento de pepita y agregale nuevos métodos. Te ayudamos con algunas ideas:
- que pepita vuele, camine o salte hacia alguna otra dirección
- que pepita no pueda volar si va a quedar con energía negativa
- ...

## ¡Una amiga para pepita!

Como no es bueno que pepita esté sola, le trajimos una compañera: pepona, que 

- vuela distinto (en diagonal)
- y canta distinto

No necesita comer (se las arregla sola). Probala incorporándola al juego

```xtend
game.addVisual(pepona)
pepona.canta()
pepona.vola(10)
pepona.vola(10)
```

¡Te sugerimos tener el juego al lado de la consola, para poder ir viendo los efectos de los mensajes que mandes!

¡Que lo disfrutes!

