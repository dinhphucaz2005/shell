# This script starts an RTSP stream using FFmpeg, looping a video file.
export input="videos/output.mp4"
export output="rtsp://localhost:8554/mystream"

ffmpeg -re -stream_loop -1 -i "$input" \
  -c:v libx264 -preset ultrafast -tune zerolatency -b:v 2500k \
  -c:a aac -b:a 128k \
  -f rtsp -rtsp_transport tcp "$output" \
  -timeout 1000000 -reconnect 1 -reconnect_at_eof 1 -reconnect_streamed 1 -reconnect_delay_max 5 \
  -loglevel verbose