curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s"$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s"$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm --version
nvm install node
source ~/.profile
sudo apt-get install authbind
sudo touch /etc/authbind/byport/80
sudo chown $USER /etc/authbind/byport/80
sudo chmod 755 /etc/authbind/byport/80
sudo touch /etc/authbind/byport/443
sudo chown $USER /etc/authbind/byport/443
sudo chmod 755 /etc/authbind/byport/443
npm install pm2@latest -g 
#authbind --deep pm2 update
npm install 
authbind --deep pm2 start index.js --name blackhole -f
