#!/bin/bash
curl -o /usr/local/bin/minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x /usr/local/bin/minikube
curl -o /usr/local/bin/kubectl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x /usr/local/bin/kubectl
mkdir /home/minikube
useradd -s /bin/bash -d /home/minikube minikube
usermod -aG docker minikube
chown minikube /home/minikube
echo "Done! Next step is log in with minikube user and start with "minikube start" command"
