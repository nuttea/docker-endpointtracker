FROM nuttea/acitoolkit-asean-dc-se:v3
WORKDIR /opt/acitoolkit/applications/endpointtracker
COPY ./wait-for-it.sh wait-for-it.sh
COPY ./credentials.py credentials.py
COPY ./docker-entrypoint.sh docker-entrypoint.sh
#RUN ./wait-for-it.sh db:3306 -t 60 -s -- python aci-endpoint-tracker.py
#CMD python aci-endpoint-tracker-gui.py -i db -a root -s C1sco12345 --ip 0.0.0.0 --port 5050
