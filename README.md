# Updating Elasticsearch to the Latest Version

This document provides a step-by-step guide to update Elasticsearch to the latest version on Debian-based operating systems, such as Ubuntu, addressing common issues that may arise.

## Issues and Solutions

### 1. Problems Executing `wget`

**Issue**: An error occurs when running `wget`, with the message: "/usr/bin/wget: /usr/bin/wget: cannot execute binary file".

**Solution**: Reinstall `wget` to ensure it functions correctly.

```bash
sudo apt-get install --reinstall wget
```

### 2. Deprecated Use of `apt-key`

**Issue**: `apt-key` is deprecated, and a warning appears when attempting to add Elasticsearch's GPG key.

**Solution**: Use a more modern approach by directly adding the GPG key to the system's keyring.

## Update Steps

Follow these steps to update Elasticsearch:

### Step 1: Adding Elasticsearch GPG Key

Add the Elasticsearch GPG key to your system's keyring to ensure the security and authenticity of the packages.

```bash
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | gpg --dearmor | sudo tee /usr/share/keyrings/elasticsearch.gpg > /dev/null
```

### Step 2: Adding Elasticsearch Repository

Add the official Elasticsearch repository to your system. This ensures that you will receive the latest updates directly from Elastic.

```bash
echo "deb [signed-by=/usr/share/keyrings/elasticsearch.gpg] https://artifacts.elastic.co/packages/8.x/apt stable main" | sudo tee /etc/apt/sources.list.d/elastic-8.x.list
```

### Step 3: Update and Install Elasticsearch

After adding the repository, update your package list and install Elasticsearch.

```bash
sudo apt-get update && sudo apt-get install elasticsearch
```

## Conclusion

Following these steps will ensure that your system can safely and efficiently update Elasticsearch to the latest version.
