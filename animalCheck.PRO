domains
	sym=symbol
predicates
	type(sym, sym)
	is_a(sym, sym)
	lives(sym, sym)
	can_swim(sym)
clauses
	type(ungulate, animal).
	type(fish, animal).
	
	is_a(zebra, ungulate).
	is_a(herring, fish).
	is_a(shark, fish).
	
	lives(zebra, on_land).
	lives(frog, on_land).
	lives(frog, in_water).
	lives(shark, in_water).
	
	can_swim(Y):-
		type(X, animal),
		is_a(Y, X),
		lives(Y, in_water).

goal
	can_swim(What),
	write("A ", What, " can swim.").