rebuild:
	@docker-compose down
	@docker-compose build
	@docker-compose up -d
	@docker image prune -f
