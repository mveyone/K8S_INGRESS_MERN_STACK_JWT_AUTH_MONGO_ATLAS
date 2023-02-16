### local
build-local:
	cd frontend && $(MAKE) build-local
	cd backend && $(MAKE) build-local

run-local:
	ENV=local docker-compose -f docker-compose.local.yml up

stop-local:
	docker-compose -f docker-compose.local.yml down -v
	docker rmi react-app-local
	docker rmi api-server-local

### dev
build-dev:
	cd frontend && $(MAKE) build-dev
	cd backend && $(MAKE) build-dev

run-dev:
	ENV=dev docker-compose -f docker-compose.dev.yml up

stop-dev:
	docker-compose -f docker-compose.dev.yml down -v
	docker rmi react-app-dev
	docker rmi api-server-dev