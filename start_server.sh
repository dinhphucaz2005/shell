# This script starts a MediaMTX server using Docker.
# It uses the `mediamtx.yml` configuration file to set up the server.
docker run --rm -it \
  -p 8554:8554 \
  -v $(pwd)/mediamtx.yml:/mediamtx.yml \
  bluenviron/mediamtx