#docker build -f db.dockerfile -t digitalfindmore/demo_api_mysql:1.0 .
#docker push digitalfindmore/demo_api_mysql:1.0
FROM	mysql:latest


ADD init.sql /docker-entrypoint-initdb.d/