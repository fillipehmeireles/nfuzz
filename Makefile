SSL=-d:ssl
build:
	nimble build --verbose $(SSL) -o build/
test:
	nimble test $(SSL)