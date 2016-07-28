# Pepita Game
Clásico ejemplo de Pepita para aprender jugando con Wollok Game (Wollok v1.5.0)

## Cómo jugar
Como podemos ver, nuestra carpeta `src` solo contiene un archivo `pepita.wlk` con todos los objetos ya creados.

Podemos correr el archivo desde consola: `Botón derecho -> Run as -> Run with REPL` y ya podemos jugar con pepita mandándole mensajes.

## Y el juego?
Jugar directamente con la consola puede ser divertido, pero también es bastante abstracto y hasta a veces confuso. Es por eso que en esta etapa te proponemos levantar Wollok Game y agregar a pepita para poder ver qué hace más de cerca.
Para eso hay que usar el objeto **game** que ya viene con Wollok:
```XTend
game.start() // Levanta un proceso con la pantalla
game.addVisual(pepita) // Agrega un objeto para mostrarlo por pantalla
```
Ahora ya deberías poder ver a pepita!

Te sugerimos tener el juego al lado de la consola, para poder ir viendo los efectos de los mensajes que mandes!

Que lo disfrutes!
