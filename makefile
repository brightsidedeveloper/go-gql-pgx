PHONY: docker-up docker-down psql

docker-up:
	docker compose up -d

docker-down:
	docker compose down

psql:
	psql -h localhost -U tim -d go-gql-pgx -p 5432

gen:
	go tool gqlgen generate