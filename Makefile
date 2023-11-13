build:
	docker build -t cowrvalera/docker-ubuntu-apache-php:22.04_php8.2_ioncube_1.0.0 --platform linux/amd64 .


run_dev:
	docker-compose up -d

stop_dev:
	docker-compose down