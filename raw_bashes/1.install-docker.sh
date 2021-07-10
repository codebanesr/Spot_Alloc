echo "installing docker from amazon-linux-extras"
sudo amazon-linux-extras install docker

echo "starting docker"
sudo service docker start

echo "Updating ami"
yum update

echo "adding ec2-user to docker group"
sudo usermod -a -G docker ec2-user

echo "Automatically start docker on boot"
sudo chkconfig docker on

echo "Installing git"
sudo yum install -y git

echo "reboot system"
sudo reboot