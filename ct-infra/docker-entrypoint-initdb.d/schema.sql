DROP TABLE IF EXISTS place CASCADE;
CREATE TABLE place(
    id SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    address VARCHAR(100),
    postalCode VARCHAR(10),
    city VARCHAR(100),
    countryCode VARCHAR(2),
    latitude DECIMAL(8,6) NOT NULL,
    longitude DECIMAL(9,6) NOT NULL

);

DROP TABLE IF EXISTS rain;
CREATE TABLE rain(
    id SERIAL PRIMARY KEY,
    date DATE NOT NULL,
    litersMsq DECIMAL(7,3) NOT NULL,
    observations TEXT,
    id_place INT NOT NULL,
    FOREIGN KEY (id_place) REFERENCES place(id)
);
