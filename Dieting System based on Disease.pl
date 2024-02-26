% Define diet suggestions based on diseases
diet_suggestion(cancer, 'Consume plenty of fruits, vegetables, and whole grains. Limit processed meats and sugary foods. Maintain a balanced diet.').
diet_suggestion(diabetes, 'Focus on high-fiber, low-fat foods. Limit sugary and high-carbohydrate foods. Eat smaller, frequent meals.').
diet_suggestion(hypertension, 'Reduce sodium intake. Eat plenty of fruits, vegetables, whole grains, and lean proteins. Avoid processed and high-sodium foods.').
diet_suggestion(high_cholesterol, 'Consume foods low in saturated and trans fats. Include more fruits, vegetables, and whole grains. Limit cholesterol-rich foods.').
diet_suggestion(ibs, 'Eat smaller meals. Avoid trigger foods like dairy, caffeine, and certain vegetables. Consume soluble fiber and stay hydrated.').
diet_suggestion(celiac_disease, 'Avoid gluten-containing grains like wheat, barley, and rye. Opt for gluten-free alternatives like quinoa, rice, and corn.').

% Rules to suggest diet based on disease
suggest_diet(Disease) :-
    diet_suggestion(Disease, Diet),
    write('For '), write(Disease), write(', it is suggested: '), write(Diet), nl.
output prolog code:
?- suggest_diet(cancer).
