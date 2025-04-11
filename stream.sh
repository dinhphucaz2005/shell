
# ffmpeg -re -i data/input.mp4 -c copy -f flv rtmp://localhost:1935/stream/test
ffmpeg -re -f lavfi -i testsrc=size=1280x720:rate=30 -f lavfi -i sine=frequency=1000:sample_rate=44100 \
-c:v libx264 -c:a aac -f flv rtmp://localhost:1935/stream/test