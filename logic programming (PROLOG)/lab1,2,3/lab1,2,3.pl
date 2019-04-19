domains
	price, money = integer.
	name, marka, bank = symbol.

predicates
	calling(name, symbol).
	car(symbol, marka, symbol, price).
	bank(name, bank, money).
	otv(name, money, symbol, symbol).

clauses
	calling("El", "8925847295").
	calling("Kate", "8543254555").
	calling("Tanya", "8925847666").
	calling("Tina", "8925847777").
	calling("El", "8925847888").
	calling("Ann", X):-calling("El", X).

	car(daewoo, matiz, red, 3000).
	car(kia, picanto, blue, 3500).
	car(hyundai, accent, black, 40000).
	car(volkswagen, polo, silver, 4100).
	car(ford, focus, sand, 5000).
	car(toyota, corolla, sand, 6000).

	bank("El"   , sberbank, 1000).
	bank("Kate"   , citibank, 5000).
	bank("Tanya", rsb     , 4999).
	bank("Tina"  , tinkoff , 2999).
	bank("Ann"   , rsb     , 10000).
	
	otv(Name, Money, Car, Number) :- 
		car(Car, _, _, Minn),
		calling(Name, Number),
		bank(Name, _, Money), Money > Minn.
	
	
	
goal
	%calling("Kate", X).
	otv("Kate", Money, Car, Number).
	