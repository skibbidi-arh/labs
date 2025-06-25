import socket
client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
client.connect(('192.168.183.72', 6009))
for msg in [b"220042153"]:
    client.sendall(msg)
    data = client.recv(1024)
    print("Echo:", data)
input("Press ENTER here to close the connection and exit...")
client.close()