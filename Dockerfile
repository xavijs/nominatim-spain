FROM mediagis/nominatim:3.5
COPY spain-latest.osm.pbf /data/
RUN sh /app/init.sh /data/spain-latest.osm.pbf postgresdata 8

