#!/bin/bash
# V. 1.1.0

volume=ESP
repo="/home/$USER/hackintosh/Repo"
efi="$repo/EFI"
propertree="/home/$USER/hackintosh/propertree/ProperTree.py"

if [[ "$(uname)" == "Darwin" ]]; then
    volumedir="/Volumes/$volume"
else
	volumedir="/media/$USER/$volume"
fi

echo "Starting ProperTree..."
python3 "$propertree" "$efi/OC/config.plist"

echo "Preparing to copy EFI..."
rm -rf "$volumedir/EFI"

echo "Copying new EFI..."
cp -r "$efi" "$volumedir/EFI"

read -p "Commit message (leave empty to skip): > " message
cd $

if [[ -n "$message" ]]; then
	echo "Pushing to GitHub..."
	git stage .
	git commit -m "$message"
	git push
fi

echo "Process complete"
exit 0
