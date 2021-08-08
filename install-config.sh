#!/bin/sh

# install lazydocker
curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash


sudoadd-apt-repository ppa:lazygit-team/release && \
sudo apt-get update && \
sudo apt-get install lazygit
