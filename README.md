# Pepita Game
 
[![Build Status](https://travis-ci.org/wollok/pepitaGame.svg?branch=master)](https://travis-ci.org/wollok/pepitaGame)

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

Más información sobre estos mensajes se puede encontrar en el sitio de wollok o en la documentación dentro del IDE (mediante ctrl+shift+F3).

