import socket

client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
peer_ip = '192.168.183.72'  # Replace with your friend's PC IP
peer_port = 6006
client.connect((peer_ip, peer_port))
user_id = '220042153'

client.sendall(user_id.encode())
print("Sent user ID")
client.close()
