#!/bin/bash

generate_unique_bucket_name() {
    local prefix=$1
    local date=$(date +%Y%m%d%H%M%S)        #Current date and time in YYYYMMDDHHMMSS format
    local random_id=$(openssl rand -hex 3)  #Random identifier of 6 hexadecimal characters
    echo "${prefix}-${date}-${random_id}"
}

prefix="jeisomrevocs-bucket"

# Verify that the input is a positive number
read -p "Enter the number of buckets to create: " bucket_count
if ! [[ "$bucket_count" =~ ^[0-9]+$ ]] || [ "$bucket_count" -le 0 ]; then
    echo "Please enter a positive integer."
    exit 1
fi

for ((i = 1; i <= bucket_count; i++)); do
    bucket_name=$(generate_unique_bucket_name $prefix)
    echo "Unique name of the generated bucket: $bucket_name"
done