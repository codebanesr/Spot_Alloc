echo "Installing docker compose"
sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose

echo "Making docker compose executable"
sudo chmod +x /usr/local/bin/docker-compose

echo "Printing docker compose version"
docker-compose version


echo "Installing zsh"
sudo yum install zsh


echo "zsh version -> $(zsh --version)"

echo "Installing ohmyzsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"