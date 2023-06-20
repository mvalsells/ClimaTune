DROP TABLE IF EXISTS place;
CREATE TABLE place(
    id SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    address VARCHAR(100),
    postalCode VARCHAR(10),
    city VARCHAR(100),
    countryCode VARCHAR(2),
    longitude DECIMAL(9,6) NOT NULL,
    latitude DECIMAL(8,6) NOT NULL
);

DROP TABLE IF EXISTS rain;
CREATE TABLE rain(
    id SERIAL UNIQUE,
    time TIMESTAMPTZ NOT NULL,
    litersMsq DECIMAL(7,3) NOT NULL,
    timePrecise BOOLEAN NOT NULL
);

DROP TABLE IF EXISTS rain_place;
CREATE TABLE rain_place(
    id_rain INT,
    id_place INT,
    observations TEXT,
    PRIMARY KEY(id_rain, id_place)
);