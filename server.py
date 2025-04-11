# rtp_forwarder.py
import socket

# Cổng nhận từ FFmpeg
listen_ip = "0.0.0.0"
listen_port = 5004

# Địa chỉ VLC client
client_ip = "127.0.0.1"
client_port = 6000

sock_in = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
sock_in.bind((listen_ip, listen_port))

sock_out = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

print(f"Listening on {listen_ip}:{listen_port}, forwarding to {client_ip}:{client_port}...")

while True:
    data, addr = sock_in.recvfrom(2048)
    sock_out.sendto(data, (client_ip, client_port))
