Needs to be put in as `~/.config/nvim`

Use latest nvim version possible (dev version):
```
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt install neovim
sudo apt install ripgrep 
```

Clone Packer.nvim before sourcing the config:
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

Open `./lua/czandal/packer.lua`:
```
:so
:Packersync
```

Open again - check if everything works as it should
