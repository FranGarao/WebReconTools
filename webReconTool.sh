echo "Updating System..."
sud apt update && sudo apt upgrade -y

#Create Tools Dir
mkdir Web_Recon_Tools
cd Web_Recon_Tools

echo "INSTALLING SUBDOMAIN TOOLS" #TODO: Create more echos for all categories

#SUBFINDER
echo "Installing subfinder"
sudo apt install golang-go
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest

#N0KOVO_SUBDOMAINS
echo "Installing n0kovo_subdomains"
git clone https://github.com/n0kovo/n0kovo_subdomains.git

#AMASS
echo "Installing amass"
sudo snap install amass

#ASSETFINDER
echo "Installing assetfinder"
#$GOPATH/bin in your $PATH
go get -u github.com/tomnomnom/assetfinder


#WAYBACKURLS
echo "Installing waybackurls"
go install github.com/tomnomnom/waybackurls@latest

#HTTPX
echo "Installing httpx"
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest

#NUCLEI
echo "Installing nuclei"
go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest

#ONEFORALL
echo "Installing OneForAll"
git clone https://github.com/shmilylty/OneForAll.git
cd OneForAll
pip install -r requirements.txt
cd ../

#SUBZY
echo "Installing subzy"
#If $GOBIN and $GOPATH are properly set, execute the program as: subzy --help
go install -v github.com/PentestPad/subzy@latest

#ARJUN
pip3 install arjun || python3 setup.py install

#HTTPX
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest

#KATANA
CGO_ENABLED=1 go install github.com/projectdiscovery/katana/cmd/katana@latest

#LINKFINDER
git clone https://github.com/GerbenJavado/LinkFinder.git
cd LinkFinder
python setup.py install
pip3 install -r requirements.txt

#WFUZZ
pip install wfuzz

#FFUF
go install github.com/ffuf/ffuf/v2@latest

#GOBUSTER
sudo apt install gobuster

#SUBLIST3R
git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r
sudo pip install -r requirements.txt
sudo pip install requests
sudo apt-get install python-dnspython
sudo apt-get install python-argparse
cd ../

#NUCLEI
go install -v github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest


#XSSVIBES
git clone https://github.com/faiyazahmad07/xss_vibes
pip3 install -r requirements 
cd xss_vibes
main.py file
cd ../

#SOCIALHUNTER
go install github.com/utkusen/socialhunter@latest

#NIKTO
git clone https://github.com/sullo/nikto

echo "Installing subbrute"
go install github.com/projectdiscovery/subbrute/cmd/subbrute@latest

echo "Installing httprobe"
go install github.com/tomnomnom/httprobe@latest

echo "Installing unfurl"
go install github.com/tomnomnom/unfurl@latest

echo "Installing naabu"
go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest

echo "Installing dnsx"
go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest

echo "Installing dirsearch"
# go install -v github.com/projectdiscovery/dirsearch/cmd/dirsearch@latest

echo "Installing gospider"
# go install -v github.com/jaeles-project/gospider@latest

echo "Installing gf"
# go install -v github.com/tomnomnom/gf@latest

echo "Installing gf-patterns"
# go install -v github.com/tomnomnom/gf@latest

echo "Installing gospider"
# go install -v github.com/jaeles-project/gospider@latest




#OWASP ZAP (Zaproxy)
#SQLMAP
#TAR o ZIP https://github.com/sqlmapproject/sqlmap/tarbal/master

echo 'export PATH=$PATH:$(go env GOPATH)/bin' >> ~/.bashrc
source ~/.bashrc