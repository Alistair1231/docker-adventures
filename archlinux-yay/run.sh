#!/bin/bash
sudo docker build --tag testarch .;
sudo docker rm testArch --force;
sudo docker run --name testArch -d testarch
