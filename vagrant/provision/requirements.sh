apt update
apt install -y \
    golang-go
echo 'export PATH="$PATH:$HOME/go/bin"' >> .zshrc
echo 'alias c=clear' >> .zshrc
sudo ln -sf /vagrant/tool/cli.js /usr/local/bin/hack
