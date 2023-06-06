#!/bin/bash

#docker-compose -f docker-compose_wireguard.yaml up -d
docker stack deploy --compose-file docker-compose_wireguard.yaml wireguard