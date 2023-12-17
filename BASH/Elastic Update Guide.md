# Update Elasticsearch and Kibana Script

## Overview

The `updateelastic.sh` script automates the process of updating Elasticsearch and Kibana to their latest versions. It handles the addition of official Elastic repositories, updates the GPG keys, and installs the latest versions of Elasticsearch and Kibana.

## Script Content

The script performs the following actions:
1. Reinstalls `wget` to ensure it's functioning correctly.
2. Adds the GPG keys and repositories for Elasticsearch and Kibana.
3. Updates and installs the latest versions of Elasticsearch and Kibana.

## Usage

### Steps to Use the Script

1. **Download the Script**: Download `updateelastic.sh` to your server where Elasticsearch and Kibana are installed.

2. **Make the Script Executable**:
   Grant execute permissions to the script:
   ```bash
   chmod +x updateelastic.sh
   ```

3. **Run the Script**:
   Execute the script as a superuser:
   ```bash
   sudo ./updateelastic.sh
   ```

### Important Notes

- Ensure that you have backup configurations and data of Elasticsearch and Kibana before running the script.
- The script requires `sudo` privileges to install packages and add repositories.
- It is recommended to review the script before running it to make sure it aligns with your system configurations.

## Conclusion

This script simplifies the maintenance of Elasticsearch and Kibana by automating their update process. Regular updates are crucial for security patches, performance improvements, and accessing new features.
