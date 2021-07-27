CREATE FACT TABLE Visits
(
   Id INT,
   StartTime TIMESTAMP,
   Duration INT,

   -- zero or more tags
   tags Array(TEXT),
   -- user agent properties will consist of two arrays,    
   -- one for names and one for values,
   -- they will alway in the same length per specific row

   user_agent_properties_names Array(TEXT),
   user_agent_properties_values Array(TEXT),

   -- Events consist of an array for IDs, array for types,
   -- and two nested arrays for event property names and event property values
   events_ids Array(INT),
   events_type Array(TEXT),
   events_properties_names Array(Array(TEXT)),
   events_properties_values Array(Array(TEXT))
)