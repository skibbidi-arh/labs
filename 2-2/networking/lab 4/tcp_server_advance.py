import socket
import threading
server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

server.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)


server.bind(('192.168.183.196', 6003))
server.listen(5)
print("TCP server listening on port 6003...")

def handle_client(conn, addr):
    print(f"Connected by {addr}")
    try:
        while True:
            data = conn.recv(1024)
            if not data:
                break
            print(f"Received {data!r} from {addr}")
            conn.sendall(data)
    except ConnectionResetError:
        print(f"Connection with {addr} reset.")
    finally:
        conn.close()
        print(f"Connection with {addr} closed.")

try:
    while True:
        conn, addr = server.accept()
        threading.Thread(
            target=handle_client,
            args=(conn, addr),
            daemon=True
        ).start()

except KeyboardInterrupt:
    print("\nShutting down TCP server.")
finally:
    server.close()



server.bind(('192.168.183.72', 6009))
server.listen(5)
conn, addr = server.accept()
print("Connected by", addr)
while True:
    data = conn.recv(1024)
    if not data:
        break
    print("Received:", data)
    conn.sendall(data)
conn.close()