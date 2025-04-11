# arr=(
#     "rtsp://admin:Nhapro231@192.168.100.114:554/cam/realmonitor?channel=1&subtype=0"
#     "rtsp://admin:Admin123@192.168.100.117:554/cam/realmonitor?channel=1&subtype=0"
# )

# for i in "${!arr[@]}"; do
#     url="${arr[$i]}"
#     outfile="output_$((i + 1)).txt"
#     echo "Checking: $url" > "$outfile"
#     ffprobe -v error -show_streams -show_format "$url" >> "$outfile" 2>&1
# done

outfile="output.txt"
ffprobe -v error -show_streams -show_format "output.mp4" >> "$outfile" 2>&1
