# Dotfiles

### Requirements
Set zsh as your default shell (on Ubuntu):
    
    sudo apt-get update
    sudo apt-get install zsh
    sudo chsh -s $(which zsh)
    sudo apt install neovim
    sudo apt install nodejs
    curl --compressed -o- -L https://yarnpkg.com/install.sh | bash
    

### Steps
- Clone this repository into a folder that's something along the lines of ~/dotfiles
- change to the newly created folder
- enter ./install to run the dotbot
- inside neovim:
    - `:PlugInstall`
    - `:call coc#util#install()`
    - `zsh`
    - (optional for Rust) `:CocInstall coc-rust-analyzer`
    

In one step, you could just do: 
`git clone $url && cd dotfiles && ./install`

	


	
