#! bin/bash
hostnamectl set-hostname $1
yum update -y
curl -fsSL https://tailscale.com/install.sh | sh
tailscale up --auth-key $2 --ssh