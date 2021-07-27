SELECT 
   id 
FROM 
   visits
WHERE 
   has(tags, ‘sale’) 
   OR has (tags,’fashion’)
ORDER BY 
   duration DESC
