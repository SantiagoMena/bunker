Run Project:

``
$ docker-compose up
``

Run Dump MySQL Docker Terminal:

``
$ docker exec -it bunker-mysql sh /app/sql.sh
``

Run Migration Docker Terminal:

``
$ docker exec -it bunker-nestjs-app npm run migration:run
``