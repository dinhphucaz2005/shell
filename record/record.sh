export rtspUrl="rtsp://localhost:8554/mystream"
export segmentPattern="segment%03d.ts"
export outputPath="output.m3u8"

ffmpeg \
-rtsp_transport tcp \
-i $rtspUrl \
-c:v libx264 \
-preset ultrafast \
-tune zerolatency \
-profile:v baseline \
-level 3.0 \
-b:v 2M \
-maxrate 2.5M \
-bufsize 4M \
-g 50 \
-hls_time 2 \
-hls_list_size 0 \
-hls_flags delete_segments \
-hls_segment_filename $segmentPattern \
$outputPath