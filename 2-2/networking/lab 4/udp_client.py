import socket, time

# Create a UDP socket
sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

# Set a 1 second timeout for blocking socket operations
sock.settimeout(1.0)

# Define server address as localhost on port 5005
server_addr = ('192.168.183.72', 5006)  # Change 'localhost' to your peer's IP when testing across two PCs

# ---- Single message exchange ----
# ---- Multiple messages with retry and RTT ----
rtts = []  # to store round-trip times

# sending 5 messages with max 3 retries
for i in range(5):
    text = f"Msg {i}".encode('utf-8')
    attempts = 0
    while attempts < 3:
        start = time.time()  # start RTT timer
        sock.sendto(text, server_addr)  # send datagram
        try:
            data, _ = sock.recvfrom(1024)  # wait for echo
            elapsed = time.time() - start
            rtts.append(elapsed)
            print(f"Response {i}:", data, f"(RTT={elapsed:.3f}s)")
            break
        except socket.timeout:
            attempts += 1
            print(f"Retry {attempts} for message {i}")
            time.sleep(0.5)  # brief pause between messages
