# oh my zsh
echo 'INSTALLING - ohmyzsh'
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# zsh-autosuggestions
echo 'INSTALLING - zsh-autosuggestions'
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Powerlevel10k
echo 'INSTALLING - Powerlevel10k'
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

if [[ $(uname) = Darwin ]]; then
    # homebrew
    echo 'INSTALLING - homebrew'
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # Github CLI
    echo 'INSTALLING - Github CLI'
    brew install gh
fi

# Setup zsh configs
curl -o $HOME/ https://raw.githubusercontent.com/KGMaxey/terminal-setup/main/.zshrc
curl -o $HOME/ https://raw.githubusercontent.com/KGMaxey/terminal-setup/main/.p10k.zsh

source $HOME/.zshrc
source $HOME/.p10k.zsh