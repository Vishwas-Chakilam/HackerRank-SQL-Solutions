SELECT DISTINCT CITY
FROM STATION
WHERE LOWER(LEFT(CITY, 1)) IN ('a', 'e', 'i', 'o', 'u') and LOWER(RIGHT(CITY, 1)) IN ('a', 'e', 'i', 'o', 'u')
ORDER BY CITY;