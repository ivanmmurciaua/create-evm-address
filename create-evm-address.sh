#!/bin/bash

# Generate pair of keys
key=$(openssl ecparam -name secp256k1 -genkey -noout | openssl ec -text -noout)

# Get the public key
pub=$(echo "$key" | grep pub -A 5 | tail -n +2 | tr -d '\n[:space:]:' | sed 's/^04//')

# Get the private key
priv=$(echo "$key" | grep priv -A 3 | tail -n +2 | tr -d '\n[:space:]:' | sed 's/^0//')

# Derive the address from the last 160 less significant bytes of the public key
address=$(echo "$pub" | ./keccak-256sum -x -l | tr -d ' -' | tail -c 41)

# Results
clear
echo "Pair of keys:

$key

Public key:
$pub

Private key:
$priv

Address:
0x$address
"
