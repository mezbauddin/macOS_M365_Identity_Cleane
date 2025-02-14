bash
#!/bin/bash

echo "Starting cleanup of Microsoft-related accounts and credentials..."

# Step 1: Remove Microsoft-related credentials from Keychain
keywords=("Microsoft" "Office" "ADAL" "com.microsoft" "OneDrive" "Outlook" "Teams")

for keyword in "${keywords[@]}"; do
    echo "Searching for Keychain entries with keyword: $keyword"
    security find-generic-password -a $USER -s "$keyword" 2>/dev/null | grep "acct" | while read -r line; do
        label=$(echo $line | awk -F\" '{print $2}')
        echo "Deleting Keychain entry: $label"
        security delete-generic-password -l "$label" 2>/dev/null
    done
done

echo "Microsoft-related credentials have been removed from Keychain."

# Step 2: Remove cached Microsoft identities and Office license data
echo "Removing cached Microsoft identities and Office license files..."
rm -rf ~/Library/Group\ Containers/UBF8T346G9.Office
rm -rf ~/Library/Containers/com.microsoft.*
rm -rf ~/Library/Application\ Support/com.microsoft.*
rm -rf ~/Library/Preferences/com.microsoft.office.licensingV2.plist

echo "Cleanup complete. Please restart your Mac to apply the changes."
