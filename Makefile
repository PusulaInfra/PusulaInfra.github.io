.PHONY: build run test bench clean docker

# Projeyi derle
build:
	go build -o bin/pusula-serve cmd/main.go

# Sunucuyu çalıştır
run:
	go run cmd/main.go

# Tüm birim testlerini çalıştır
test:
	go test -v -race ./...

# Performans ve bellek havuzu (sync.Pool) benchmark testleri
bench:
	go test -bench=. -benchmem ./engine

# Docker imajı oluştur
docker:
	docker build -t pusula-serve:latest .

# Derleme artıklarını temizle
clean:
	rm -rf bin/
