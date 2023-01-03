### Install NVim
###### Open Bash run commands
```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage
```
If the `./nvim.appimage` command fails, try:

```bash
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version

# Optional: exposing nvim globally.
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
nvim
```
#### Install Brew
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
###### complete installation by following the instruction

### Install dependencies 
#### - install packages
```bash
sudo apt-get install python2 && sudo apt-get install python3 python3.10-venv python-pip python3-pip python-jedi
```


```bash
 brew install lazygit ;
    brew install lazydocker;
    brew install bpytop;
    brew install ncdu;
    brew install hashicorp/tap/terraform-ls
```
```bash
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 2
```
```bash
sudo update-alternatives --install /usr/bin/python python /usr/bin/python2 1
```
```bash
sudo update-alternatives --config python
```

###### select 2.7

```bash
pip3 install jedi
```
```bash
npm install --global yarn
```
#### - In order to use intellisense with Dotnet install csharp-ls & dotnet
```bash
wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb;
sudo dpkg -i packages-microsoft-prod.deb;
rm packages-microsoft-prod.deb;
sudo apt-get install -y dotnet-sdk-7.0;
```
```bash
dotnet tool install --global csharp-ls
```

####  - del-vim-tagbar Plugin depend on [Exuberant Ctags](https://ctags.sourceforge.net/)
```bash
sudo apt-get install -y exuberant-ctags
```
#### - install [vim-plug](https://github.com/junegunn/vim-plug)

```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

### Get config

```bash
cd ~ && mkdir .config && cd .config && mkdir nvim && cd ~
git clone https://github.com/arthurberzin/vim ~/.config/nvim
```

### Install plugins
```bash
nvim -c ':PlugInstall'
```

### Build Neovim Intellisense with Coc
```bash
cd ~/.local/share/nvim/plugged/coc.nvim && yarn install && yarn build && nvim -c ':PlugInstall'
```

#### Complete instaling Coc by installing needed languages
```bash
nvim -c ':CocInstall coc-omnisharp coc-html-css-support coc-docker coc-yaml coc-json coc-eslint coc-css coc-jedi coc-prettier coc-git coc-angular coc-csharp-ls'
```



# Useful Links

[vim awesome](https://vimawesome.com/) - many plugins for vim

[astro vim](https://astronvim.github.io/) - cool build
