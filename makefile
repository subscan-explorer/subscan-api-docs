.PHONY: view

view:
	docker run --rm --name slateapi -p 4567:4567 -v $(shell pwd)/source:/srv/slate/source slatedocs/slate serve
