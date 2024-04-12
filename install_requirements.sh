######################################
#  Tested on Ubuntu 22.04 LTS Server #
######################################

NO_FORMAT="\033[0m"
F_UNDERLINED="\033[4m"
C_YELLOW1="\033[48;5;226m"
C_INDIANRED1="\033[48;5;204m"

echo "${F_UNDERLINED}${C_YELLOW1}[*] Installing Dependencies${NO_FORMAT}"
sudo apt-get install zip software-properties-common python3 python3-pip ssh make -y
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/home/$USER/awscliv2.zip"
unzip /home/$USER/awscliv2.zip
sudo /home/$USER/aws/install
pip install --no-cache pipx | pip3 install --no-cache pipx
export PATH="$PATH:/home/$USER/.local/bin"
pipx ensurepath

echo ""

echo "${F_UNDERLINED}${C_YELLOW1}[*] Installing Terraform & Vagrant${NO_FORMAT}"
wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt-get update
sudo apt-get install terraform vagrant

echo ""

echo "${F_UNDERLINED}${C_YELLOW1}[*] Installing Ansible${NO_FORMAT}"
pipx install --include-deps ansible
pipx inject --include-apps ansible argcomplete
pipx inject --include-deps ansible ansible-lint
chmod +x vault-env
export ANSIBLE_VAULT_PASSWORD_FILE=./vault-env

echo ""

echo "${F_UNDERLINED}${C_INDIANRED1}[!!] Configure Azure and AWS${NO_FORMAT}"
echo "----------------------------------------"
echo "/home/$USER/bin/local/aws configure"
echo "az login"