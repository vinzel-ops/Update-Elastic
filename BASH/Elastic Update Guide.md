
# Bash Script for Automatic Elasticsearch Update

This document explains how to use the provided Bash script for automatically updating Elasticsearch to the latest version.

## Prerequisites

- Ensure you have `wget` installed on your system.
- Elasticsearch should be already installed.
- You need to have sufficient permissions to run system updates and install packages.

## Usage

1. **Save the Script**: Save the provided script as `updateelastic.sh`.

2. **Make the Script Executable**:
   Run the following command to make the script executable:
   ```bash
   chmod +x updateelastic.sh
   ```

3. **Run the Script**:
   Execute the script by running:
   ```bash
   ./updateelastic.sh
   ```

The script will check the current version of Elasticsearch installed on your system and compare it with the latest version available. If the versions differ, it will automatically update Elasticsearch.
