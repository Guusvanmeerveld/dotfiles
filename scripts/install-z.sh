# Install ohmyzsh
if [ -d "$ZSH" ]; then
	echo "ohmyzsh is installed"
else
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi


export PLUGINS=~/.oh-my-zsh/custom/plugins
export THEMES=~/.oh-my-zsh/themes

mkdir -p $PLUGINS
mkdir -p $THEMES

ln -sf $DOTFILES/config/.zshrc ~/.zshrc

# Install zsh-histdb
git -C $PLUGINS/zsh-histdb pull || git clone https://github.com/larkery/zsh-histdb $PLUGINS/zsh-histdb

# Install zsh-autosuggestions
git -C $PLUGINS/zsh-autosuggestions pull || git clone https://github.com/zsh-users/zsh-autosuggestions $PLUGINS/zsh-autosuggestions

# Install Powerlevel10k
git -C $THEMES/powerlevel10k pull || git clone https://github.com/romkatv/powerlevel10k $THEMES/powerlevel10k
