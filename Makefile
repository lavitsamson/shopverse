COMPOSE := docker compose -f deploy/docker-compose.yml

.PHONY: help up down reset logs

help:
	@echo "make up	- start all containers"
	@echo "make down	- stop all containers"
	@echo "make logs	- shows logs of container"

up:
	$(COMPOSE) up -d

down:
	$(COMPOSE) down

reset:
	$(COMPOSE) down -v

logs:
	$(COMPOSE) logs -f
