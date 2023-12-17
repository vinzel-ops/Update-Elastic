#!/bin/bash

# Ensure wget is available
sudo apt-get install --reinstall wget

# Function to add a GPG key and repository
add_repo() {
    key_url=$1
    repo_info=$2
    keyring_path=$3
    list_path=$4

    # Add GPG Key
    wget -qO - $key_url | gpg --dearmor | sudo tee $keyring_path > /dev/null

    # Add Repository
    echo "deb [signed-by=$keyring_path] $repo_info" | sudo tee $list_path
}

# Elasticsearch details
es_key="https://artifacts.elastic.co/GPG-KEY-elasticsearch"
es_repo="https://artifacts.elastic.co/packages/8.x/apt stable main"
es_keyring_path="/usr/share/keyrings/elasticsearch.gpg"
es_list_path="/etc/apt/sources.list.d/elastic-8.x.list"

# Kibana details
kb_key="https://artifacts.elastic.co/GPG-KEY-elasticsearch"
kb_repo="https://artifacts.elastic.co/packages/8.x/apt stable main"
kb_keyring_path="/usr/share/keyrings/kibana.gpg"
kb_list_path="/etc/apt/sources.list.d/kibana-8.x.list"

# Add Elasticsearch repository
add_repo $es_key $es_repo $es_keyring_path $es_list_path

# Add Kibana repository
add_repo $kb_key $kb_repo $kb_keyring_path $kb_list_path

# Update and Install Elasticsearch and Kibana
sudo apt-get update
sudo apt-get install elasticsearch kibana
