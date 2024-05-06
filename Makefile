SSL=-d:ssl

build-nfuzz:
	nimble build --verbose $(SSL)
test:
	nimble test $(SSL)