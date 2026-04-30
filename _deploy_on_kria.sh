#!/bin/bash


# List of available krias and their corresponding IP addresses
declare -A KRIA_IPS
# Add kria-1 10.210.1.3
KRIA_IPS["kria-1"]="10.210.1.175"
KRIA_IPS["kria-2"]="10.210.1.236"
KRIA_IPS["kria-4"]="10.210.1.138"
KRIA_IPS["kria-5"]="10.210.1.199"


function usage() {
    echo "Usage: $0 <kria-name>"
    echo "Example: $0 kria-1"
    echo "Available krias:" 

    # Print the available krias and their IP addresses, sorted by name
    for kria in $(printf "%s\n" "${!KRIA_IPS[@]}" | sort); do
        echo "  $kria: ${KRIA_IPS[$kria]}"
    done
}

# Check if the kria name is provided
if [ -z "$1" ]; then
    echo "Error: No Kria name provided."
    usage
    exit 1
fi

KRIA_NAME="$1"

# Check if the provided kria name is valid
if [[ ! -v KRIA_IPS["$KRIA_NAME"] ]]; then
    echo "Error: Invalid Kria name '$KRIA_NAME'."
    usage
    exit 1
fi

# Get the IP address of the specified kria
KRIA_IP="${KRIA_IPS["$KRIA_NAME"]}"

# Check if the kria is reachable
if ! ping -c 1 "$KRIA_IP" &> /dev/null; then
    echo "Error: Kria '$KRIA_NAME' with IP '$KRIA_IP' is not reachable."
    exit 1
fi

# Check if kria_dir exists
if [ ! -d "kria_dir" ]; then
    echo "Error: Directory 'kria_dir' does not exist. Please create it and add the files to be copied to the kria."
    exit 1
fi

# Create a directory with the current username in the kria if not exists
ssh ubuntu@"$KRIA_IP" "mkdir -p /home/ubuntu/$USER"

# Copy kria_dir directory to the kria
echo "Copying kria_dir to kria '$KRIA_NAME' at IP '$KRIA_IP'..."
CURRENT_DIR_NAME=$(basename "$PWD")
rsync -avzL kria_dir/* ubuntu@"$KRIA_IP":/home/ubuntu/"$USER"/"$CURRENT_DIR_NAME"/

# Copy artifacts/kria/ directory to the kria if it exists
if [ -d "artifacts/kria" ]; then
    echo "Copying artifacts/kria to kria '$KRIA_NAME' at IP '$KRIA_IP'..."
    rsync -avzL artifacts/kria/* ubuntu@"$KRIA_IP":/home/ubuntu/"$USER"/"$CURRENT_DIR_NAME"/
else
    echo "Directory 'artifacts/kria' does not exist. Skipping copying artifacts to the kria."
fi