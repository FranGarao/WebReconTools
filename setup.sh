#!/bin/bash

sudo apt update && sudo apt upgrade && sudo apt install golang-go
echo 'export PATH=$PATH:$HOME/go/bin' >> ~/.zshrc && source ~/.zshrc
echo 'export PATH=$PATH:$HOME/.local/bin' >> ~/.zshrc && source ~/.zshrc

mkdir WebReconTools && cd WebReconTools
sudo apt install python3-venv -y

#katana
CGO_ENABLED=1 go install github.com/projectdiscovery/katana/cmd/katana@latest

#subfinder
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest

#n0kovo subdomains
git clone https://github.com/n0kovo/n0kovo_subdomains.git

#amass 
go install -v github.com/owasp-amass/amass/v4/...@master

#assetfinder
go install github.com/tomnomnom/assetfinder@latest 

#gospider
GO111MODULE=on go install github.com/jaeles-project/gospider@latest

#dnsx 
go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest

#naabu
sudo apt install -y libpcap-dev && go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest

#subbrute

#httprobe
go install github.com/tomnomnom/httprobe@latest

#unfurl
go install github.com/tomnomnom/unfurl@latest

#nikto
git clone https://github.com/sullo/nikto && cd nikto/program && chmod +x nikto.pl && cd ../../ 

#socialHunter
mkdir socialHunter && cd socialHunter && wget https://github.com/utkusen/socialhunter/releases/download/v0.1.1/socialhunter_0.1.1_Linux_amd64.tar.gz
tar xzvf socialhunter_0.1.1_Linux_amd64.tar.gz
rm socialhunter_0.1.1_Linux_amd64.tar.gz 
cd ../

#xss_vibes
git clone https://github.com/faiyazahmad07/xss_vibes && cd xss_vibes && pip3 install -r requirements && cd ../

#sublist3r
sudo apt-get install sublist3r

# #sublist3r
# git clone https://github.com/aboul3la/Sublist3r.git 
# cd Sublist3r
# sudo pip install -r requirements.txt  
# sudo apt-get install python-requests
# sudo apt-get install python-dnspython 
# sudo apt-get install python-argparse
# cd ../

#gobuster
sudo apt-get install gobuster

#ffuf
go install github.com/ffuf/ffuf/v2@latest

#wfuzz
pip install wfuzz

#arjun 
sudo apt-get install arjun

#nuclei 
go install -v github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest

#httpx 
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest

#subzy
go install -v github.com/PentestPad/subzy@latest

#waybackurls 
go install github.com/tomnomnom/waybackurls@latest

#para hackyng redes inalambricas WIFI
sudo apt install aircrack-ng
sudo apt install wifite

echo "instalacion completada."


#OneForAll
#Filter-resolved
#Sqlmap
#OWASP ZAP
#LinkFinder

#TODO
# sudo apt update && sudo apt upgrade -y
# sudo apt install -y golang-go libpcap-dev gobuster python3-requests python3-dnspython python3-argparse

# python3 -m venv WebReconTools/venv
# source WebReconTools/venv/bin/activate
