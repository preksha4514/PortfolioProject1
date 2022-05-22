
-- Data Cleaning 

SELECT ID,
Name AS 'Participant Name',  -- Rename column

CASE WHEN Sex ='M' THEN 'Male' ELSE 'Female' END AS Sex,
Age,

--CASE	WHEN Age < 18 THEN 'Under 18'
--		WHEN Age Between 18 AND 23 THEN '18-23'
--		WHEN Age Between 23 AND 30 THEN '23-30'
--		WHEN Age > 30 THEN 'Over 30'
--END AS Age Group,

Height, 
Weight,
Team,
NOC,
--CHARINDEX(' ', Games)-1 AS YearIndex,
--CHARINDEX(' ', Games)+1 AS SeasonIndex,
LEFT(games, CHARINDEX(' ',games)-1) AS Year,   -- split year, based on space
RIGHT(games, CHARINDEX(' ',games) +1) As Season,    -- split season, based on space
Sport,
Event,
CASE WHEN Medal = 'NA' THEN 'Unknown' ELSE Medal END AS Medal   -- replaced NA with Unknown

From Portfolio_Project2..[Olympic games]
Where Id is not null
Order by ID
