FROM mediagis/nominatim:3.5
ADD https://download.geofabrik.de/europe/spain-latest.osm.pbf /data/spain-latest.osm.pbf
RUN sh /app/init.sh /data/spain-latest.osm.pbf postgresdata 8

