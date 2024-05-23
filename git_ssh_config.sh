#!/usr/bin/env bash

ssh() {
	local email=$1
	ssh-keygen -t ed25519 -C "$email"
}

read -r -p "digitar email: " email

ssh "$email"

eval "$(ssh-agent -s)"

ssh-add ~/.ssh/id_ed25519

cat ~/.ssh/id_ed25519.pub