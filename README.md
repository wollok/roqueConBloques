
 
[![Build Status](https://travis-ci.org/wollok/roqueConBloques.svg?branch=master)](https://travis-ci.org/wollok/roqueConBloques)

1)
 Implementar un objeto que modele a Pepita, una golondrina de la que nos interesa
saber qué energía tiene en cada momento, medida en joules. En el modelo sim-
plificado que nos piden implementar, las únicas acciones que vamos a contemplar
son:
cuando Pepita come una cantidad de comida especificada en gramos, en este
caso adquiere 4 joules por cada gramo, y
cuando Pepita vuela una cantidad de kilómetros, en este caso gasta un joule
por cada kilómetro, más 10 joules de costo de despegue y aterrizaje.
La energía de Pepita nace en 100. El objeto que implementa este modelo de Pepita,
debe entender los siguientes mensajes:
comer(gramos)
volar(kilometros)
energia()
P.ej. si sobre un REPL recién lanzado se evalúa la siguiente secuencia
pepita.comer(100)
pepita.volar(10)
pepita.volar(20)
pepita.energia()
el resultado debe ser 450.



2) Agregar al modelo de Pepita del la capacidad de entender estos men-
sajes:

estaDebil() , Pepita está débil si su energía es menos de 50.
estaFeliz() , Pepita está feliz si su energía está entre 500 y 1000.
cuantoQuiereVolar() , que es el resultado de la siguiente cuenta. De base,
quiere volar (energía / 5) kilómetros, p.ej., si tiene 120 de energía, quiere volar
24 kilómetros. Si la energía está entre 300 y 400, entonces hay que sumar 10
a este valor, y si es múltiplo de 20, otros 15. Entonces, si Pepita tiene 340 de
energía, quiere volar 68 + 10 + 15 = 93 kilómetros. Para probar esto, sobre
un REPL recién lanzado darle de comer 60 a Pepita, así la energía queda en
340.
Para saber si n es múltiplo de 20 hacer: n % 20 == 0 . Probarlo en el REPL.

3)
Entrenamiento de Pepita
Roque es el entrenador de Pepita. Cuando entrena a un pepita usa su rutina para aves
diseñada por él.
1. Volar 10 kms.
2. comer 300 gramos.
3. Volar 5 kms.
4. Que el ave haga lo que quiera como premio.



