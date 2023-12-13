#!/bin/bash

# Mengambil versi terbaru Elasticsearch dari situs resmi
latest_version=$(wget -qO- https://www.elastic.co/downloads/past-releases#elasticsearch | grep -oP 'elasticsearch-\K[0-9]+\.[0-9]+\.[0-9]+' | head -1)

# Mendapatkan versi Elasticsearch yang terinstal
installed_version=$(elasticsearch --version | grep -oP '[0-9]+\.[0-9]+\.[0-9]+')

echo "Versi terbaru: $latest_version"
echo "Versi terinstal: $installed_version"

# Bandingkan versi dan update jika diperlukan
if [ "$latest_version" != "$installed_version" ]; then
    echo "Melakukan update Elasticsearch..."
    sudo apt-get update && sudo apt-get install --only-upgrade elasticsearch
else
    echo "Elasticsearch sudah terupdate."
fi
