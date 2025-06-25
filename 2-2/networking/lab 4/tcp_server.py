import socket

server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
server.bind(('0.0.0.0', 6007))
server.listen(5)
print("TCP server listening on port 6006...")

conn, addr = server.accept()
print("Connected by", addr)
while True:
    data = conn.recv(1024)
    if not data:
        break
    print(f"Received: {data.decode()}")
conn.close()
