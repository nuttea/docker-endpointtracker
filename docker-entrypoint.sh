#!/bin/bash
./wait-for-it.sh db:3306 -t 600 -s -- python aci-endpoint-tracker.py &
./wait-for-it.sh db:3306 -t 600 -s -- python aci-endpoint-tracker-gui.py -i db -a root -s C1sco12345 --ip 0.0.0.0 --port 5050
exec "$@"
