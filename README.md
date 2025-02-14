# Microsoft Account & Credential Cleanup Script for macOS

## Overview
This Bash script removes Microsoft-related credentials and cached identity data from macOS. It cleans up Keychain entries, cached Office license files, and Microsoft-related application data.

## Features
- Deletes stored Microsoft credentials from macOS Keychain.
- Removes cached Microsoft identities and Office licensing data.
- Cleans up application support and preference files related to Microsoft products.

## Usage
### Prerequisites
- Ensure you have appropriate permissions to manage Keychain and delete system files.
- Run the script in a terminal with administrator privileges if necessary.

### Running the Script
1. Download or clone this repository:
   ```bash
   git clone https://github.com/yourusername/microsoft-cleanup-script.git
   cd microsoft-cleanup-script
   ```
2. Make the script executable:
   ```bash
   chmod +x cleanup_microsoft.sh
   ```
3. Run the script:
   ```bash
   ./cleanup_microsoft.sh
   ```

## What This Script Does
- Searches for stored Microsoft-related credentials in Keychain and deletes them.
- Removes cached Microsoft-related files from the macOS Library directory.
- Deletes Office license files to ensure a clean reset.

## Affected Applications
The script affects the following Microsoft-related applications:
- Microsoft Office (Word, Excel, PowerPoint, Outlook)
- Microsoft Teams
- OneDrive
- Other Microsoft services storing credentials in Keychain

## Important Notes
- **Backup Important Data**: Before running this script, ensure you have backed up any necessary Microsoft-related data.
- **Re-login Required**: You will need to re-authenticate in Microsoft applications after running this script.
- **Restart Recommended**: Restart your Mac after execution to apply changes completely.

## License
This script is released under the MIT License.
