echo ">> Installing gobuster"
go get github.com/OJ/gobuster

echo ">> Installing subfinder"
go get github.com/projectdiscovery/subfinder/v2/cmd/subfinder

echo ">> Installing aquatone"
go get github.com/michenriksen/aquatone

echo ">> Setting up the Hack"
cd /vagrant/hack/tool/ 
npm ci
cd /vagrant
sudo ln -sf /vagrant/hack/tool/cli.js /usr/local/bin/hack