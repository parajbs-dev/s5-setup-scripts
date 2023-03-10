# s5-setup-scripts
A collection for s5-node install and build scripts for windows10 / ubuntu22.04 / Debian9.2 and docker-start-script for debian12 / ubuntu2204.

## Version
0.3.0

## About S5 network

S5 is a decentralized network that puts you in control of your data and identity.

At its core, it is a content-addressed storage network like IPFS and also uses many of the formats and standards created in the IPFS project.

This repository contains a proof of concept implementation of a S5 node written in the Dart programming language. It is licensed under the MIT license.

project: https://github.com/s5-dev/S5

skd-doc: https://docs.s5.ninja/

## Prerequisites

1. Clone this repo.


## s5-node setup for windows10 64bit

1. cd windows10_64
2. before you install s5-node, first configure the file "default_config_extra.toml".
3. first you need to run "1_setup_s5.bat" as administrator, then you may need to restart the computer.
4. if necessary, restart the computer.
5. next run "2_build_s5.bat", after that the s5-node is installed and compiled.
6. now you can start the s5-node with "s5-note_start.bat"


## s5-node setup for debian 9.2 32bit

1. cd linux/debian92_32
2. before you install s5-node, first configure the file "default_config_extra.toml".
3. run "setup_s5.sh", after that the s5-node is installed and compiled.
4. now you can start the s5-node with "s5-node_start.sh"


## s5-node setup for ubuntu 22.04 64bit

1. cd linux/ubuntu2204_64
2. before you install s5-node, first configure the file "default_config_extra.toml".
3. run "setup_s5.sh", after that the s5-node is installed and compiled.
4. now you can start the s5-node with "s5-node_start.sh"


## under linux 64bit setup a docker image with debian12 and s5-node

1. cd docker
2. before you install s5-node, first configure the file "debian12_64/default_config_extra.toml".
2. run "start_docker_debian12_systemd.sh", after that the s5-node is installed and compiled.
3. configure the "config.toml" for your s5-node.
4. Now you can start the s5 node with "s5-node_start.sh" in the docker image with name "s5-node".

 
## under linux 64bit setup a docker image with ubuntu2204 and s5-node

1. cd docker
2. before you install s5-node, first configure the file "ubuntu2204_64/default_config_extra.toml".
2. run "start_docker_ubuntu2204_systemd.sh", after that the s5-node is installed and compiled.
3. configure the "config.toml" for your s5-node.
4. Now you can start the s5 node with "s5-node_start.sh" in the docker image with name "s5-node".



