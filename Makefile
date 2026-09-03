.PHONY: serve check

# This repository is the GitHub Pages console (HTML/JS).
# The Go CLI/API lives in https://github.com/PusulaInfra/pusula-serve
#
# Original Go-shaped targets kept as comments so history is not erased:
# build:
# 	go build -o bin/pusula-serve cmd/main.go
# run:
# 	go run cmd/main.go
# test:
# 	go test -v -race ./...
# bench:
# 	go test -bench=. -benchmem ./engine
# docker:
# 	docker build -t pusula-serve:latest .
# clean:
# 	rm -rf bin/

serve:
	python3 -m http.server 8080

check:
	test -f index.html
	test -f ops/index.html
	test -f about/index.html
	test -f pusula-serve/index.html
	test -f legal/index.html
	grep -q 'id="boot"' index.html
	grep -q 'vram:32' index.html
	grep -q 'function pack(' index.html
	grep -q 'function paint(' ops/index.html
