FROM mediagis/nominatim:3.5
RUN curl https://download.geofabrik.de/europe/spain-latest.osm.pbf --output spain-latest.osm.pbf
RUN mkdir /data &&  mv spain-latest.osm.pbf /data/spain-latest.osm.pbf
RUN sh /app/init.sh /data/spain-latest.osm.pbf postgresdata 8
