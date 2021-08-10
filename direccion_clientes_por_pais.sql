SELECT customer.first_name, address.address  FROM CUSTOMER
JOIN address USING (address_id)
JOIN city USING (city_id)
JOIN country USING (country_id)
order by country_id