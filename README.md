# Course Manager API

## Development

To generate a new model:

```
docker-compose run api rails generate model Course record_key:string...
```

To create & migrate the database:

```
docker-compose run api rails db:create
docker-compose run api rails db:migrate
```

To go inside the PostgreSQl container:

```
docker-compose exec db psql -U "username" -d "database_name"
```
