teaches(teacher1, math, 'MATH101').
teaches(teacher2, physics, 'PHYS101').
teaches(teacher3, chemistry, 'CHEM101').
enrolled(john, 'MATH101').
enrolled(john, 'PHYS101').
enrolled(amy, 'CHEM101').
enrolled(bob, 'MATH101').
enrolled(bob, 'CHEM101').
enrolled(susan, 'PHYS101').
teacher_for_subject(Subject, Teacher) :-
    teaches(Teacher, _, Subject).

students_for_subject(Subject, Students) :-
    setof(Student, enrolled(Student, Subject), Students).
    output for prolog code:
    OUTPUT:
?-  teacher_for_subject('MATH101', Teacher).
Teacher = teacher1.

?-  students_for_subject('CHEM101', Students).
Students = [amy, bob].

