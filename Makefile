# fix permissions for all files in ./app
fix-permissions:
	sudo chown -R 1000:0 app

# load the server
start:
	docker-compose up -d --build

# stop the server
stop:
	docker-compose down --remove-orphans

# restart the server
restart:
	docker-compose restart

# install the project
install: start
	docker-compose exec php symfony new .
	make fix-permissions

# enter in the project with /bin/bash in php container
bash-php:
	docker-compose exec php /bin/bash

# 
dev: start bash-php

# uninstall the project in ./app
remove: stop fix-permissions
	rm -rf app