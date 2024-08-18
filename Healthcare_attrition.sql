SELECT * FROM main;

#INSIGHT 1: WHICH JOB ROLE HAS HIGHEST AND LOWEST ATTRITION RATE?
SELECT 
    JobRole,
    ROUND(AVG(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0, 2) AS AttritionRate
FROM 
    main
GROUP BY 
    JobRole
ORDER BY 
    AttritionRate DESC;
    
    
#INSIGHT 2: HOW DOES DISTANCE FROM HOME AFFECT ATTRITION RATE?
SELECT 
    CASE 
        WHEN DistanceFromHome <= 5 THEN '0-5 km'
        WHEN DistanceFromHome BETWEEN 6 AND 10 THEN '6-10 km'
        WHEN DistanceFromHome BETWEEN 11 AND 20 THEN '11-20 km'
        ELSE 'Above 20 km'
    END AS DistanceGroup,
    ROUND(AVG(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0, 2) AS AttritionRate
FROM 
    main
GROUP BY 
    DistanceGroup
ORDER BY
	AttritionRate DESC;
   
   
#INSIGHT 3: GENDER WITH HIGHEST ATTRITION?
SELECT 
    Gender,
    ROUND(AVG(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0, 2) AS AttritionRate
FROM 
    main
GROUP BY 
    Gender
ORDER BY 
    AttritionRate DESC;

    
#INSIGHT 4: WHICH DEPARTMENT HAS HIGHEST AVG MONTHLY INCOME AND HOW DOES IT AFFECT THE ATTRITION RATE?
SELECT 
    Department,
    ROUND(AVG(MonthlyIncome), 2) AS AvgMonthlyIncome,
    ROUND(AVG(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0, 2) AS AttritionRate
FROM 
    main
GROUP BY 
    Department
ORDER BY 
    AvgMonthlyIncome DESC;
 
 
#INSIGHT 5: HOW OVERTIME AFFECT THE ATTRITION RATE?
SELECT 
    OverTime,
    ROUND(AVG(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0, 2) AS AttritionRate
FROM 
    main
GROUP BY 
    OverTime;
 
 
#INSIGHT 6: WHAT IS THE IMPACT OF EDUCATION LEVELS ON ATTRITION?
 SELECT 
    Education,
    ROUND(AVG(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0, 2) AS AttritionRate
FROM 
    main
GROUP BY 
    Education
ORDER BY AttritionRate DESC;


#INSIGHT 7: HOW DO ENVIONMENT SATISFACTION AND YEARS AT COMPANY AFFECT THE ATTRITION AMONG THE EMPLOYEES WITH HIGHER SALARY HIKE?
SELECT 
    EnvironmentSatisfaction,
    YearsAtCompany,
    ROUND(AVG(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0, 2) AS AttritionRate
FROM 
   main
WHERE 
    PercentSalaryHike > (SELECT AVG(PercentSalaryHike) FROM main)
GROUP BY 
    EnvironmentSatisfaction,
    YearsAtCompany
ORDER BY 
    AttritionRate DESC;

    
#INSIGHT 8: HOW PERCENT SALARY HIKE AND YEARS SINCE LAST PROMOTION AFFECT THE ATTRITION?
SELECT 
    PercentSalaryHike,
    YearsSinceLastPromotion,
    ROUND(AVG(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0, 2) AS AttritionRate
FROM 
    main
GROUP BY 
    PercentSalaryHike,
    YearsSinceLastPromotion
ORDER BY 
    AttritionRate DESC;
    
    
#INSIGHT 9: RELATIONSHIP BETWEEN THE NUMBER OF COMPANIES AN EMPLOYEE HAS WORKED AND ATTRITION?
SELECT 
    NumCompaniesWorked,
    ROUND(AVG(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0, 2) AS AttritionRate
FROM 
    main
GROUP BY 
    NumCompaniesWorked
ORDER BY AttritionRate DESC;


#INSIGHT 10: IMPACT OF DISTANCE FROM HOME,JOB INVOLVEMENT AND ATTRITION
SELECT 
    CASE 
        WHEN DistanceFromHome BETWEEN 0 AND 5 THEN '0-5 km'
        WHEN DistanceFromHome BETWEEN 6 AND 10 THEN '6-10 km'
        WHEN DistanceFromHome BETWEEN 11 AND 15 THEN '11-15 km'
        WHEN DistanceFromHome BETWEEN 16 AND 20 THEN '16-20 km'
        ELSE '20+ km'
    END AS DistanceGroup,
    JobInvolvement,
    ROUND(AVG(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0, 2) AS AttritionRate
FROM 
    main
GROUP BY 
    DistanceGroup,
    JobInvolvement
ORDER BY 
    AttritionRate DESC;





   
   




