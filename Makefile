up:
	chmod a+x 
	docker compose -f scripts/docker-compose.yaml up -d
	sleep 3
	ls -l
	# docker run -p 4222:4222 -it python:3.7-slim python3 -m http.server --bind 0.0.0.0
	# ./scripts/expose_ports.sh
	# ./scripts/create_streams.sh
	# ./scripts/create_consumers.sh

down:
	docker compose -f scripts/docker-compose.yaml down