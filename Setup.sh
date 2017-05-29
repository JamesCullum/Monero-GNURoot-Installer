#!/bin/bash
cd /

echo "Checking dependancies..."
if ! [ -x "$(command -v bzip2)" ]; then
	echo "Updating sources and installing requirements..."
	apt-get update && apt-get install wget bzip2
fi

mkdir monero
cd monero 

echo "Downloading current Monero version..."
wget -O monero.tar.bzip2 https://downloads.getmonero.org/arm

echo "Extracting the client..."
tar -xf monero.tar.bzip2
rm monero.tar.bzip2

cd monero-v*
echo "#!/bin/bash" > start.sh
echo "./monero-wallet-cli --daemon-address node.moneroworld.com:18081" >> start.sh

echo "Monero was installed into /monero/monero-v*"
echo "Use \"sh start.sh\" in this folder to start the wallet with the moneroworld.com remote node"