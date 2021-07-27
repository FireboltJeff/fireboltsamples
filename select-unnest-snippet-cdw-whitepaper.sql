SELECT id FROM visits
   UNNEST (tags)
   WHERE tags = ‘sale’ OR tags = ‘fashion’
   GROUP BY id
   ORDER BY duration DESC