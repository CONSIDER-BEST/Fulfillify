#!/bin/bash

# Install Rust and the wasm32-unknown-unknown target
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
rustup target add wasm32-unknown-unknown

# Install Visual Studio Code and extensions for Rust development
sudo apt update
sudo apt install -y software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install -y code
code --install-extension rust-lang.rust
code --install-extension matklad.rust-analyzer
code --install-extension vadimcn.vscode-lldb

# Install Soroban CLI
cargo install --locked --version 0.7.0 soroban-cli
