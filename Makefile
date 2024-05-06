new:
	docker-compose build
	docker-compose down
	docker-compose kill
	docker-compose rm -f
	direnv allow
	docker-compose up -d --remove-orphans

clean:
	docker-compose down
	docker-compose kill
	docker-compose rm -f

debug:
	docker-compose down
	docker-compose kill
	docker-compose rm -f
	direnv allow
	docker-compose up -d --remove-orphans
	docker-compose logs -f

down:
	docker-compose down
	docker-compose kill
	docker-compose rm -f
