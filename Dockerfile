# Base image CUSTOM Gus
FROM guolivar/odin-base:latest

## create directories
RUN mkdir -p /scripts/mapping/idw2

## copy files
COPY /mapping/odin_locations.txt /scripts/mapping/odin_locations.txt
COPY /mapping/secret_googlemaps.txt /scripts/mapping/secret_googlemaps.txt
COPY /mapping/secret_hologram.txt /scripts/mapping/secret_hologram.txt
COPY /mapping/secret_twitter.txt /scripts/mapping/secret_twitter.txt
COPY /mapping/client_secrets.json /scripts/mapping/client_secrets.json
COPY /daily_docker.R /scripts/daily_docker.R


## run script
CMD Rscript /scripts/daily_docker.R
#RUN exit