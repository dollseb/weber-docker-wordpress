#!/bin/bash

attempts=0
attempts_max=20


echo "--- stopping docker services"
docker compose -f /home/weber/Docker/weber-tfts/docker-compose.yml down

echo "--- starting docker services"
docker compose -f /home/weber/Docker/weber-tfts/docker-compose.yml up -d >/dev/null

echo "--- waiting for services "
until $(curl --output /dev/null --silent --head --fail http://localhost:8080); do
    if [ ${attempts} -eq ${attempts_max} ];then
      echo "--- error starting services"
      exit 1
    fi

    echo -n ". "
    attempts=$(($attempts+1))
    sleep 1
done

echo "--- services started"
echo "--- waiting for database"
sleep 5
echo "--- database started"


echo "--- starting browser"
sleep 1
chromium-browser --start-maximized --kiosk --noerrdialogs --disable-infobars --no-first-run --ozone-platform=wayland "http://localhost:8080" & > /dev/null &

