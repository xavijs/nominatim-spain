# nominatim-spain
Build [nominatim](https://nominatim.org/) service in a dockerized container.

# Database source
https://download.geofabrik.de/europe.html

# Run (pre-built image)
```sh
docker run --restart=always -p 7070:8080 -d --name nominatim-spain xavijs/nominatim-spain bash /app/start.sh
```
Enjoy!

# Usage
- http://localhost:7070

*it takes few minutes to be abailable to handle requests after "docker run" command.


# Build image from scratch

## System requisites (1h of build time aprox)
- 150Gb disk space left
- 15Gb Ram
- 8 Core CPU

```sh
docker build . -t nominatim-spain
docker run --restart=always -p 7070:8080 -d --name nominatim-spain nominatim-spain bash /app/start.sh   
```
