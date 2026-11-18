COMPOSE := docker compose -f deploy/docker-compose.yml

.PHONY: help up down reset logs

help:
	@echo "make up	- starts all containers"
	@echo "make down	- stops all containers"
	@echo "make reset	- stops all containers and removes the volumes"
	@echo "make logs	- shows logs of container"

up:
	$(COMPOSE) up -d

down:
	$(COMPOSE) down

reset:
	$(COMPOSE) down -v

logs:
	$(COMPOSE) logs -f
