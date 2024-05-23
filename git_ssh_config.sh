#!/usr/bin/env bash

sudo apt update; sudo apt install upgrade
sudo apt install git

ssh() {
	local email=$1
	ssh-keygen -t ed25519 -C "$email"
}

read -r -p "digitar email: " email

ssh "$email"

eval "$(ssh-agent -s)"

ssh-add ~/.ssh/id_ed25519

cat ~/.ssh/id_ed25519.pub

read -r -p "digitar nome: " nome

git config user.name "$nome"
git config user.email "$email"