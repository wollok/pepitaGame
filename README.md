# Pepita Game
## Primera parte
### Darle de comer a pepita
- Al presionar la letra m, queremos que pepita se mueva hasta donde está la manzana y se la coma. La manzana debe desaparecer del tablero.
- Al presionar la letra a, el mismo comportamiento pero en este caso con el alpiste.

### Pepita engorda
Modificar el método imagen en pepita para que se adecue al estado de pepita:
- Si tiene energia > 100 pepita está gorda, usar la imagen "pepita-gorda-raw"
- En caso contrario podemos mantener la imagen actual.

### Pepita habla
- Hacer que pepita no haga nada si le indico que vuele a la ciudad en la que ya está. En cambio usar el mensaje 'say' para que pepita diga "Ya estoy en <nombre de la ciudad>!".
- Pepita tampoco debe volar si no le alcanza la energia y en cambio usamos el mensaje 'say' para decir "Dame de comer primero!".

## Segunda parte
### Roque
Introducir Roque, el entrenador. En esta etapa pepita ya no puede moverse con las flechas, la primer tarea será que al presionar las flechas el que se mueva sea roque.

Roque tendrá las siguientes capacidades:
- Al encontrar una comida, Roque la levanta y se la guarda. Si ya tenía una suelta la anterior, en una posición al azar del tablero.
- Al encontrar a pepita, Roque le entrega la comida que tiene y pepita se la come. Luego, hacer aparecer de nuevo la comida en un lugar al azar del tablero.

Algunos tips:
- Los números entienden el mensaje #randomUpTo(n) que devuelve un número random.
- Los números entienden los mensajes #roundUp() y truncate(n), que permiten obtener un número entero a partir de un número decimal.
- El objeto game entiende el mensaje #at(x,y) que devuelve una posición.

Más información sobre estos mensajes se puede encontrar en [el sitio de wollok](https://www.wollok.org/documentacion/wollokdoc/) o en la documentación dentro del IDE (mediante ctrl+shift+F3).


## Tercera parte
### Muchas comidas
En esta nueva etapa, tanto Roque como Pepita se moverán con el teclado:
- Roque: se mueve con las flechas.
- Pepita: se mueve con ASDW.

Además, Roque ya no levanta comida para Pepita, ahora ella puede ir a buscarla por sí misma. Su tarea ahora será dejar comida en el tablero para que Pepita pueda comerla. Entonces queremos que:
- Cuando Pepita choca con una comida, se la come.
- Roque deje una comida en la posición en la que está:
  - Si se presiona la tecla L: deja un montoncito de alpiste.
  - Si se presiona la tecla M: deja una manzana.
- El juego debe comenzar con un montoncito de alpiste y una manzana en el tablero, como lo hacía anteriormente.

**ATENCIÓN** ahora puede haber muchas manzanas y montoncitos de alpistes en el tablero.

- También queremos que cuando Pepita se encuentre con Roque se saluden mutuamente.

### Alpistes variables
Roque nos contó un poco mejor cómo arma los mentoncitos de alpistes que va dejando por el camino. 

Él va agarrando granitos de alpiste a medida que camina (1 grano por cada paso que dá). Así que cuando deja un montoncito, deja todos los granos que estuvo recolectando durante el camino.

> Por ejemplo, si camina 5 pasos y deja un montoncito de alpiste, éste tiene 5 granos. Luego da 2 pasos más y deja otro montoncito, este nuevo tendría 2 granos de alpiste.

- Queremos agregar este requerimiento al juego, teniendo en cuenta que ahora los montoncitos de alpiste dan `0,5 * cantidad de granos` de energía.
