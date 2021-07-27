SELECT COUNT(id) as number_of_visits FROM visits
   UNNEST (events_type)
   WHERE
      any_match({(prop_name, prop_val)-> prop_name = ‘agent_string’ AND
      prop_val LIKE % ‘safari’}, user_agent_properties_names,
      user_agent_properties_values)
   GROUP BY events_type
   ORDER BY number_of_visits