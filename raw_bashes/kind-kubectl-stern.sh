echo "Installing kubectl"
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

echo "Downloading checksum"
curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"

echo "Verifying checksum"
echo "$(<kubectl.sha256) kubectl" | sha256sum --check

echo "installing in /usr/local/bin"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

echo "Kubectl version"
kubectl version --client

echo "Installing Kind"
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.11.1/kind-linux-amd64
chmod +x ./kind

echo "moving kind to /usr/local/bin"
sudo mv kind /usr/local/bin/


echo "Downloading stern binary"
wget https://github.com/wercker/stern/releases/download/1.11.0/stern_linux_amd64
sudo chmod +x stern_linux_amd64

echo "Renaming stern binary to stern"
mv stern_linux_amd64 stern

echo "moving stern to /usr/local/bin"
sudo mv stern /usr/local/bin/
