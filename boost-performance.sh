#!/bin/bash

# enable turbo boost check (turbo-boost.sh) script
if [[ -z $(which turbo-boost) ]]; then
    echo " [X] turbo boost is not available" >&2
    exit 1
fi

# check if cpupower is available
if [[ -z $(which cpupower) ]]; then
    echo " [X] cpupower is not installed. Run 'sudo apt-get install linux-cpupower' to install it." >&2
    exit 1
fi

# enable turbo boost 
sudo turbo-boost enable

# change cpu max clock
if [[  -z $1 ]]; then
    sudo cpupower frequency-set -u 3500000
else
    sudo cpupower frequency-set -u $1
    echo $1
fi
