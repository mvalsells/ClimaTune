# ClimaTune Infraestructure

Docker compose with two continers/services:
- **db:** TimescaleDB container with a volume named db-data to persist data.
- **db_init:** Container to initialize the database with the schema if the database does not exist in the db container.

### Environment variables
Content of the .env file, change to your needs:
```
# Service db - TimeScale
# Password will only be used if the db container is not initialized
POSTGRES_PASSWORD=password_to_change
DATABASE_NAME=climatune
```