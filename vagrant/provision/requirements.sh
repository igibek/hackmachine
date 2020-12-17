apt update
echo ">> Installing the Go-lang"
apt install -y \
    golang-go
echo 'export PATH="$PATH:$HOME/go/bin"' >> .zshrc

# Node.js
echo ">> Installing the Node.js"
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs

echo 'alias c=clear' >> .zshrc
