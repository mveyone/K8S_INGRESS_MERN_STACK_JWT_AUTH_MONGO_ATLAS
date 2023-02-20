build-prod:
	cd client && $(MAKE) build-prod
	cd server && $(MAKE) build-prod