#> RC - $PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH

#> RC - XDG Spec
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state

export ZSH="$XDG_DATA_HOME"/oh-my-zsh
export HISTFILE="$XDG_STATE_HOME"/bash/history
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history

#> RC - Custom ENV
export EDITOR='code'
export TERMINAL='alacritty'
export STARSHIP_CONFIG=~/.config/starship/starship.toml
export STARSHIP_CACHE=~/.config/starship/cache

#> SECTION: OMZ
ZSH_CUSTOM="$HOME/.config/zsh/custom"
#>>> OMZ - Theme
ZSH_THEME="robbyrussell"
#>>> OMZ - Update
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 1
#>>> OMZ - Plugins
plugins=(aliases alias-finder alias-tips command-not-found debian git vscode zsh-autosuggestions zsh-syntax-highlighting)

#> RC - Sources
source $ZSH/oh-my-zsh.sh

#> SECTION: Aliases
alias zrl="omz reload"
#> CMD - Quicks
alias c="clear"
alias ls="lsd"
#> CMD - System
alias dnfi="sudo dnf install -y"
alias dnfu="sudo dnf update -y && sudo dnf upgrade -y"
alias dnfs="sudo dnf search"
#> ALS - Configs
alias zfg="code ~/.config/zsh/.zshrc"
alias sfg="code ~/.config/starship/starship.toml"
alias afg="code ~/.config/alacritty/alacritty.yml"
alias lfg="code ~/.config/lsd/config.yaml"

#> RC - Eval
eval "$(starship init zsh)"
