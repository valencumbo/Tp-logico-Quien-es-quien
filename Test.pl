:-beguin_tests(calvos).
test("la persona es calva"):-esCalvo(samuel).
test("la persona no es calva", fail):- esCalvo(pepe).
:-end_tests(calvos).

:-beguin_tests(rubios).
test("la persona es rubia"):- esRubio(pepe).
test("la persona no es rubia", fail):- esRubio(samuel).
:- end_tests(rubios).

:- beguin_tests(lentes).
test("la persona tiene lentes", set(Persona == [samuel, pepe])):- tieneLentes(Persona).
:- end_tests(lentes).

:- beguin_tests(ojosmarrones).
test("la persona tiene ojos marrones", set(Persona == [samuel, pepe])):- tieneOjosMarrones(Persona).
:- end_tests(ojosmarrones).

:- beguin_tests(cararedonda).
test("la persona tiene la cara redonda", set (Persona \= [samuel, pepe])):- tieneCaraRedonda(Persona).
:- end_tests(cararedonda).
