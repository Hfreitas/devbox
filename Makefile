.EXPORT_ALL_VARIABLES:

DOCKER_DEFAULT_PLATFORM = linux/amd64

DEVBOX_PROJECT_NAME = devbox

.PHONY: default
default: help ;

help:
	@echo
	@echo "Devbox: Easily developer environments using docker"
	@echo "Help commands:"
	@echo
	@echo "  make mysql5.7-help			Help about MySQL 5.7 services"
	@echo "  make mariadb10.5-help			Help about MariaDB 10.5 services"
	@echo "  make postgres13.2-help		Help about Postgres 13.2 services"
	@echo "  make postgres14.2-help		Help about Postgres 14.2 services"
	@echo "  make redis6.2-help			Help about Redis 6.2 services"
	@echo "  make mongo4.4-help			Help about Mongo 4.4 services"
	@echo "  make kafka6.1-help			Help about Kafka 6.1 services"
	@echo "  make minio-help			Help about MinIO latest services"
	@echo

include kafka/6.1/Makefile
include mariadb/10.5/Makefile
include minio/latest/Makefile
include mongo/4.4/Makefile
include mysql/5.7/Makefile
include postgres/13.2/Makefile
include postgres/14.2/Makefile
include redis/6.2/Makefile
