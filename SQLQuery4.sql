-- 1. How can we see the grades in the database?
Select Name from Grade;

-- 2. What emotions may be associated with a poem?
Select Name from Emotion;

-- 3. How many poems are in the database?
Select Count (Id) From Poem;

-- 4. Sort authors alphabetically by name.
-- What are the names of the top 76 authors after authors are alphabetically ordered?
Select Top (76) Name, Id From Author Order By Name;

-- 5. 