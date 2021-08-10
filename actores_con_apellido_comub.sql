SELECT 
    concat_ws(' ', a1.first_name, a1.last_name),
	group_concat(a2.first_name SEPARATOR ', ')
    
FROM sakila.actor a1
	join actor a2 on (a1.last_name = a2.last_name and a1.actor_id != a2.actor_id)
group by a1.actor_id