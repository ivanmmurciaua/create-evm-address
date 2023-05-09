# Creating your EVM address

> ### It's not magic, it's math

## Introduction
IT Security is one of the most important concepts that exist. So I created this mini-tool to generate your public and private key and derived address for use on any EVM-compatible network, completely offline.

## Usage
> IMPORTANT: If you want to stay safe, just download this repository in your online computer, copy it to a USB memory and go to your offline environment.

Clone it or download:
`git clone https://github.com/ivanmmurciaua/create-evm-address.git`

Navigate to the folder and execute the script:
`cd create-evm-address/`
&
`./create-evm-address`

That's all.
Now, you have your EVM cold wallet ready to import in a watch-only service.

## Security

This scripts only runs the selected commands using `openssl` and a pre-compiled keccak256 lib.

Don't forget to save the result if you want to interact with your funds and _Happy hacking!_