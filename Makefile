up:
	docker compose -f scripts/docker-compose.yaml up -d
	sleep 3
	# ./scripts/create_streams.sh
	# ./scripts/create_consumers.sh

down:
	docker compose -f scripts/docker-compose.yaml down