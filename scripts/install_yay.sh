# Download
git -C /tmp/yay pull || git clone https://aur.archlinux.org/yay /tmp/yay/

cd /tmp/yay

# Install
makepkg -sci --noconfirm

yay --answerclean None --answerdiff None --answeredit None --answerupgrade None --removemake --save
