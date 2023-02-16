build-dev:
	cd frontend && $(MAKE) build-dev
	cd backend && $(MAKE) build-dev

run-dev:
	docker-compose -f docker-compose.dev.yml up

stop-dev:
	docker-compose -f docker-compose.dev.yml down -v
	docker rmi react-app-dev
	docker rmi api-server-dev