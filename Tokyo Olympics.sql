--Number of atheletes fom each country
SELECT Country,
COUNT(*)AS TotalAtheletes
FROM athletes
GROUP BY Country
ORDER BY TotalAtheletes DESC;

--Number of medals won by each country
SELECT Team_Country,
SUM(Gold) AS Total_Gold,
SUM(Silver)AS Total_Silver,
SUM(Bronze) AS Total_Bronze
FROM medals
GROUP BY Team_Country
ORDER BY Total_Gold DESC;

--Number of Medals won by India
SELECT SUM(Gold) AS Total_Gold,
SUM(Silver)AS Total_Silver,
SUM(Bronze) AS Total_Bronze
FROM medals
WHERE Team_Country = 'India'
ORDER BY Total_Gold DESC;



