# Write your MySQL query statement below
Select Distinct Email From Person
Where Email
In (Select  Email From  Person Group By Email Having  Count(Email) > 1)
