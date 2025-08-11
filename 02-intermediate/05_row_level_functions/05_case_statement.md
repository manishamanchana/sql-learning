Case Statement
Evaluates a list of conditions and returns a value when the first condition is met
Syntax:
CASE --Start of logic

WHEN Condition1 THEN result1
WHEN Condition2 THEN result2

ELSE result

END --End of logic

- CASE --Start of logic
- WHEN Condition to be evaluated
- THEN result if the condition is true
- ELSE Deault value this is optional when none of the WHEN conditions are not satisfied this is returned


END --End of logic


executes the contion in top down order
imp condition should be at the start
order of condition is important

NOTE/Importat point :
- SQL stops the execution once the first condition is met

#1 use case
Categorizing data : Group the data into different categories based on certain conditions


RULES:
1. The data type of the results must be matching
2. CASE statement can be used anywhere in the query

#2 Use Case
Mapping values
