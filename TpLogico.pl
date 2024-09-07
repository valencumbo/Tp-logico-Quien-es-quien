persona(samuel,lentes(negros)).
persona(samuel,pelo(blanco,lacio)).
persona(samuel,calvo).
persona(samuel,boca(chica)).
persona(samuel,cara(puntuda)).
persona(samuel,ojos(marrones)).
persona(samuel,nariz(chica)).
persona(pepe,lentes(rojos)).
persona(pepe,pelo(rubio,rulos)).
persona(pepe,boca(chica)).
persona(pepe,cara(puntuda)).
persona(pepe,ojos(marrones)).
persona(pepe,nariz(chica)).
carta(rojo,samuel).
carta(azul,pepe).
contrincante(rojo,azul).
contrincante(azul,rojo).

esCalvo(Persona):-persona(Persona,calvo).
esRubio(Persona):-persona(Persona,pelo(rubio,_)).

tieneLentes(Persona):-persona(Persona,lentes(_)).
tieneLentes(Persona):-persona(Persona,lentes(_)).

tieneLentes(Persona):-persona(Persona,boca(grande)),persona(Persona,nariz(chica)).
tieneOjosMarrones(Persona):-persona(Persona,pelo(negro,_)).
tieneOjosMarrones(Persona):-persona(Persona,pelo(castaño,_)).
tieneCaraRedonda(Persona):- not(persona(Persona, cara(puntuda))).



