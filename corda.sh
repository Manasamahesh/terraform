 #!/bin/bash
sudo apt-get update -y
sudo apt-get install openjdk-8-jdk -y
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
git clone https://github.com/corda/samples 
cd samples/cordapp-example
sudo ./gradlew deployNodes 
sudo workflows-kotlin/build/nodes/runnodes
sudo curl -X PUT 'http://localhost:50005/api/example/create-iou?iouValue=1&partyName=O=PartyB,L=New%20York,C=US'
#excute
