
# Import modules to get system information
import platform
import socket
import shutil
import psutil

# Display the project title
print("=" * 45)
print("       SYSTEM HEALTH CHECKER")
print("=" * 45)

# Get operating system information
print("\n--- System Information ---")
print("Operating System:", platform.system())
print("OS Version:", platform.version())
print("Computer Name:", socket.gethostname())
print("Python Version:", platform.python_version())

# Get CPU usage information
print("\n--- CPU Information ---")
cpu_usage = psutil.cpu_percent(interval=1)
print(f"CPU Usage: {cpu_usage}%")

# Get RAM usage information
print("\n--- RAM Information ---")
ram = psutil.virtual_memory()
total_ram_gb = ram.total / (1024 ** 3)
used_ram_gb = ram.used / (1024 ** 3)
available_ram_gb = ram.available / (1024 ** 3)

print(f"Total RAM: {total_ram_gb:.2f} GB")
print(f"Used RAM: {used_ram_gb:.2f} GB")
print(f"Available RAM: {available_ram_gb:.2f} GB")
print(f"RAM Usage: {ram.percent}%")

# Get disk usage information
print("\n--- Disk Information ---")
total, used, free = shutil.disk_usage(".")

# Convert bytes into gigabytes
total_gb = total / (1024 ** 3)
used_gb = used / (1024 ** 3)
free_gb = free / (1024 ** 3)

print(f"Total Disk Space: {total_gb:.2f} GB")
print(f"Used Disk Space: {used_gb:.2f} GB")
print(f"Free Disk Space: {free_gb:.2f} GB")

print("\nSystem health check completed.")
