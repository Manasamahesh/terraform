# for installing docker
#!/bin/bash
rm -r hyperledgerfabrics
cd hyperledgerfabrics
sudo apt-get purge docker-ce
sudo rm -rf /var/lib/docker
sudo apt-get update
sudo apt-get install\apt-transport-https\ca-certificates\curl\gnupg-agent\software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint
sudo add-apt-repository \ "deb [arch=amd64] https://download.docker.com/linux/ubuntu \$(lsb_release -cs) \stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo docker run hello-world
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
 docker-compose --version
#  for installing go
wget https://dl.google.com/go/go1.11.4.linux-amd64.tar.gz
sudo tar -xvf go1.11.4.linux-amd64.tar.gz
sudo mv go /usr/local
export GOROOT=/usr/local/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
go version
go env
# for installing the node.js
sudo apt install npm -y
npm install npm@5.6.0 -get -y
#for installing python
sudo apt-get install python -y
python --version
#for downloading the sample document
# git clone https://github.com/hyperledger/fabric-samples.git
curl -sSL http://bit.ly/2ysbOFE | bash -s 1.4.0
export PATH=<>/bin:$PATH
cd fabric-samples
./scripts/bootstrap.sh
#for downloading hyperledger example