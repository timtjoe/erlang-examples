-record(person, {name, age, email}).

P = #person{name='Ada', age='36', email='ada@example.com'},
P#person.name, %% access name
P2 = P#person{age=37},