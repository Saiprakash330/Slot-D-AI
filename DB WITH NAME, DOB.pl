person(john, '2000-05-15').
person(john,'2000-05-15').
person(susuan,'1995-12-20').
person(jim,'1988-09-10').
person(ravi,'1990-03-25').

get_dob(Name,DOB):-
    person(Name,DOB).
    output for prolog code:
    get_dob(john,DOB).
