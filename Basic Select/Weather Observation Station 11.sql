SELECT DISTINCT CITY
FROM STATION
WHERE LOWER(LEFT(CITY, 1))  NOT IN ('a', 'e', 'i', 'o', 'u') or
LOWER(RIGHT(CITY, 1))  NOT IN ('a', 'e', 'i', 'o', 'u')
ORDER BY CITY;