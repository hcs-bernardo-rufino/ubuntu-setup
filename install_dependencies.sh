#!/bin/bash -i
# Atualiza a distro e baixa pacotes necessários
sudo apt update && sudo apt upgrade -y

# Dependências do Python
sudo apt-get install make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev \
libncurses5-dev libgdbm-dev libnss3-dev -y

# Dependências Pyenv
sudo apt-get install tcl-dev lzma python-openssl -y

# Instalando o git
sudo apt-get install git -y

# Faz download do Pyenv direto do repositório no GitHub
if [ -d "$HOME/.pyenv" ] 
then
    echo "Diretório .pyenv já existe... ignorando etapa!" 
else
    echo "Baixando .pyenv..." 
    git clone https://github.com/pyenv/pyenv.git ~/.pyenv
    #curl https://pyenv.run | bash
fi

# Adiciona o Pyenv ao arquivo de configuração do bash (/$HOME/.bashrc)
echo -e "\n\n# pyenv environment variables\nexport PYENV_ROOT=\"\$HOME/.pyenv\"\nexport PATH=\"\$PYENV_ROOT/bin:\$PATH\"\n\n# pyenv initialization\nif command -v pyenv 1>/dev/null 2>&1; then\n  eval \"\$(pyenv init --path)\"\nfi\n\n" >> ~/.bashrc
source .bashrc