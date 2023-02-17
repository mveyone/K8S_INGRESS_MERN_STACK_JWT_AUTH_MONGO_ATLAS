build-dev:
	docker build -t react-app-dev -f Dockerfile.dev .
	
build-local:
	docker build -t react-app-local -f Dockerfile.local .

build-dev2:
	docker build \
		-t react-app-dev2 \
		--build-arg CADDYFILE=Caddyfile.dev2 \
		-f Dockerfile.dev2 .

build-ngx:
	docker build \
		-t react-app-ngx \
		-f Dockerfile.ngx .

