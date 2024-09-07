:-include('TpLogico.pl').

:-begin_tests(calvos).
test("la persona es calva"):-esCalvo(samuel).
test("la persona no es calva",fail):-esCalvo(pepe).
:-end_tests(calvos).

:-begin_tests(rubios).
test("la persona es rubia"):-esRubio(pepe).
test("la persona no es rubia",fail):-esRubio(samuel).
:-end_tests(rubios).

:-begin_tests(lentes).
test("la persona tiene lentes",set(Persona = [samuel, pepe])):-tieneLentes(Persona).
:-end_tests(lentes).

:-begin_tests(ojosmarrones).
test("la persona tiene ojos marrones",set(Persona = [samuel, pepe])):-tieneOjosMarrones(Persona).
:- end_tests(ojosmarrones).

