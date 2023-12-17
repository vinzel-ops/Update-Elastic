# Automating Updates for Elasticsearch and Kibana

## Introduction

This document provides a guide on how to automate updates for Elasticsearch and Kibana to the latest versions using the official Elastic repositories. This process involves addressing issues with `wget` execution, replacing the deprecated `apt-key` method, and adding and using the Elastic repository.

## Preparation

### Ensuring `wget` Functionality

Ensure that `wget` is functioning correctly on your system. If there are issues, reinstall it:

```bash
sudo apt-get install --reinstall wget
```

### Handling Deprecated `apt-key`

The latest versions of Debian and its derivatives have deprecated `apt-key`. Instead, we will use keyring files.

## Adding Elasticsearch Repository

1. **Add Elasticsearch GPG Key**:
   To add the Elasticsearch GPG key to your system's keyring, use the command:

   ```bash
   wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | gpg --dearmor | sudo tee /usr/share/keyrings/elasticsearch.gpg > /dev/null
   ```

2. **Add Elasticsearch Repository**:
   Add the Elasticsearch repository to your system with:

   ```bash
   echo "deb [signed-by=/usr/share/keyrings/elasticsearch.gpg] https://artifacts.elastic.co/packages/8.x/apt stable main" | sudo tee /etc/apt/sources.list.d/elastic-8.x.list
   ```

3. **Update and Install Elasticsearch**:
   To update and install Elasticsearch:

   ```bash
   sudo apt-get update && sudo apt-get install elasticsearch
   ```

## Adding Kibana Repository

The process for Kibana is similar to Elasticsearch.

1. **Add GPG Key and Repository for Kibana**:
   Use the same steps as for Elasticsearch, ensuring to change the URL and keyring file name appropriately for Kibana.

2. **Update and Install Kibana**:
   Run the update and install for Kibana:

   ```bash
   sudo apt-get update && sudo apt-get install kibana
   ```

## Conclusion

By adding the official Elastic repositories and using the latest methods for keyring management, you can ensure that your system is always updated with the latest versions of Elasticsearch and Kibana. Always remember to backup configurations and data before performing updates.
