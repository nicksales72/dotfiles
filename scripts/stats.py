from rich.console import Console
from rich.table import Table 
import os
import psutil
import time
import shutil

console = Console()

def get_temp():
    try:
        with open("/sys/class/thermal/thermal_zone0/temp", "r") as f:
            temp = int(f.read()) / 1000.0
            return f"{temp:.1f} C"
    except:
        return "Unavailable"

def get_uptime():
    return os.popen("uptime -p").read().strip()[3:]

def get_ip():
    return os.popen("hostname -I").read().strip()[0:10]

def get_disk_free():
    return shutil.disk_usage("/").free // (1024 ** 3)

def main():
    table = Table(title="npi5 stats")

    table.add_column("Metric", style="cyan", no_wrap=True)
    table.add_column("Value", style="magenta")

    table.add_row("Uptime", get_uptime())
    table.add_row("CPU Temp", get_temp())
    table.add_row("CPU Usage", f"{psutil.cpu_percent()} %")
    table.add_row("RAM Usage", f"{psutil.virtual_memory().percent} %")
    table.add_row("IP Address", get_ip())
    table.add_row("Disk Free", f"{get_disk_free()} GB")

    console.clear()
    console.print(table)

if __name__ == "__main__":
    while True:
        main()
        time.sleep(5)
