--- Places
\COPY place(id, name, address, postalCode, city, countryCode, latitude, longitude) FROM '/docker-entrypoint-initdb.d/demoData/places.csv' DELIMITER ',' CSV HEADER;

--- Rain
\COPY rain(id, date, litersMsq, observations, id_place)  FROM '/docker-entrypoint-initdb.d/demoData/2002.csv' DELIMITER ',' CSV HEADER;