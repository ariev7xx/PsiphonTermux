#!/data/data/com.termux/files/usr/bin/bash
bashrc=$HOME/.bashrc
if grep "Psiphon" $bashrc &> /dev/null
then
echo "Psiphon already install in bashrc"
else
echo "Downloading data Psiphon..."
curl -O -s https://raw.githubusercontent.com/ariev7xx/PsiphonTermux/main/Psiphon.tar.gz
echo "Installing Psiphon..."
tar -xzf Psiphon.tar.gz
chmod a+x Psiphon/tun
chmod a+x Psiphon/psiphon-tunnel-core
echo "Create executable tun..."
echo 'PATH="$PATH:$HOME/Psiphon"' >> $HOME/.bashrc
#source $HOME/.bashrc
echo 'PATH="$PATH:$HOME/Psiphon"' >> $HOME/.zshrc 
#source $HOME/.zshrc 
fi
rm i.sh
rm Psiphon.tar.gz
echo "Done. restart termux and Type 'tun' for run Psiphon. 'tun -h' for help"
read
exit
