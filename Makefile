all: build

build:
	@docker build --tag=martadams89/invoiceplane:latest .

release: build
	@docker build --tag=martadams89/invoiceplane:$(shell cat VERSION) .
