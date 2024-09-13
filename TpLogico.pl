persona(samuel, lentes(negros)).
persona(samuel, pelo(blanco, lacio)).
persona(samuel, calvo).
persona(samuel, boca(chica)).
persona(samuel, cara(puntuda)).
persona(samuel, ojos(marrones)).
persona(samuel, nariz(chica)).
persona(pepe, lentes(rojos)).
persona(pepe, pelo(rubio, rulos)).
persona(pepe, boca(chica)).
persona(pepe, cara(puntuda)).
persona(pepe, ojos(marrones)).
persona(pepe, nariz(chica)).
carta(rojo, samuel).
carta(azul, pepe).
contrincante(rojo, azul).
contrincante(azul, rojo).

esCalvo(Persona) :- persona(Persona, calvo).
esRubio(Persona) :- persona(Persona, pelo(rubio, _)).

tieneLentes(Persona) :- persona(Persona, lentes(_)).
tieneLentes(Persona) :- persona(Persona, boca(grande)), persona(Persona, nariz(chica)).
tieneOjosMarrones(Persona) :- persona(Persona, ojos(marrones)).
tieneOjosMarrones(Persona) :- persona(Persona, pelo(negro, _)).
tieneOjosMarrones(Persona) :- persona(Persona, pelo(castaño, _)).
tieneCaraRedonda(Persona) :- not(persona(Persona, cara(puntuda))).

tieneBocaChica(Persona) :- persona(Persona, boca(chica)).

rubiosBocaChica(Personas) :-
    findall(Persona, (esRubio(Persona), tieneBocaChica(Persona)), Personas).

cumple_pistas(Persona, Pistas) :-
    forall(member(Pista, Pistas), persona(Persona, Pista)).

ganando(Jugador, PistasJugador, PistasContrincante) :-
    contrincante(Jugador, Contrincante),
    cantidad_que_cumple(Jugador, PistasJugador, CantidadJugador),
    cantidad_que_cumple(Contrincante, PistasContrincante, CantidadContrincante),
    CantidadJugador < CantidadContrincante.

cantidad_que_cumple(Jugador, Pistas, Cantidad) :-
    findall(Persona, cumple_pistas(Persona, Pistas), Personas),
    length(Personas, Cantidad).
