#!/usr/bin/env python3
import requests
import re
import subprocess

# Mengambil versi terbaru Elasticsearch
response = requests.get('https://www.elastic.co/downloads/past-releases#elasticsearch')
latest_version = re.search('elasticsearch-(\d+\.\d+\.\d+)', response.text).group(1)

# Mendapatkan versi Elasticsearch yang terinstal
installed_version = subprocess.run(['elasticsearch', '--version'], capture_output=True, text=True)
installed_version = re.search('(\d+\.\d+\.\d+)', installed_version.stdout).group(1)

print(f"Versi terbaru: {latest_version}")
print(f"Versi terinstal: {installed_version}")

# Bandingkan versi dan update jika diperlukan
if latest_version != installed_version:
    print("Melakukan update Elasticsearch...")
    subprocess.run(['sudo', 'apt-get', 'update'])
    subprocess.run(['sudo', 'apt-get', 'install', '--only-upgrade', 'elasticsearch'])
else:
    print("Elasticsearch sudah terupdate.")
