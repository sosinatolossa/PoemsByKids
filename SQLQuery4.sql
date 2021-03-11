-- 1. How can we see the grades in the database?
Select Name from Grade;

-- 2. What emotions may be associated with a poem?
Select Name from Emotion;

-- 3. How many poems are in the database?
Select Count (Id) From Poem;

-- 4. Sort authors alphabetically by name.
-- What are the names of the top 76 authors after authors are alphabetically ordered?
Select Top (76) Name, Id From Author Order By Name;

-- 5. Starting with the above query, add the grade of each of the authors
Select Top (76) a.Name, a.GradeId, g.Name 
From Author a 
Right Join Grade g on a.GradeId = g.Id;

-- 6. Starting with the above query, add the recorded gender of each of the authors
Select Top (76) a.Name, a.GradeId, a.GenderId, g.Name, gen.Name
From Author a 
Right Join Grade g on a.GradeId = g.Id
Right Join Gender gen on a.GenderId = gen.Id;

-- 7. What is the total number of words in all poems in the database?
Select sum (WordCount) From Poem; --we have to select all of the poem word counts and add them

-- 8. Which poem has the fewest characters?
-- Select min (CharCount) Title From Poem; -- if you do it this way, you can use sub query
Select 

-- 9. How many authors are in the third grade?
Select count (a.Id)  
From Author a 
where a.GradeId = 3;

--10. How many authors are in the first, second or third grades?
Select count (a.Id)  
From Author a 
where a.GradeId = 1 or a.GradeId = 2 or a.GradeId = 3;

-- 17. How many poems are not associated with any emotion?
-- get all the poems that are not a foreign key on PoemEmotion
-- on Poem(bc some of poem's Id are not on PoemEmotion
Select count (p.id) 'emotionless poems'
from Poem p
Left Join PoemEmotion pe on p.id = pe.PoemId
where pe.PoemId is Null;


