#!/bin/bash

# Vars
key=$(openssl ecparam -name secp256k1 -genkey -noout | openssl ec -text -noout)
pub=$(echo "$key" | grep pub -A 5 | tail -n +2 | tr -d '\n[:space:]:' | sed 's/^04//')
priv=$(echo "$key" | grep priv -A 3 | tail -n +2 | tr -d '\n[:space:]:' | sed 's/^0//')
address=$(echo "$pub" | ./keccak-256sum -x -l | tr -d ' -' | tail -c 41)


# Results
echo "Pair of keys:

$key

Public key:
$pub

Private key:
$priv

Address:
0x$address"
