#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y linux-headers-$(uname -r) build-essential dkms
