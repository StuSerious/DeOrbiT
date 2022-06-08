#>>> Stu's take on Oh My ZSH

#>>> SECTION: OMZ
ZSH_CUSTOM="$HOME/.config/zsh/custom"
export ZSH="$HOME/.oh-my-zsh"
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

#>>> SECTION: Updates
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 1

#>>> SECTION: Theming
ZSH_THEME="random"
ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" )
ZSH_THEME_RANDOM_QUIET="true"

#>>> SECTION: Plugins
plugins=(aliases alias-finder alias-tips command-not-found debian git)

#>>> SECTION: Aliases
#> OMZ
alias zfg="code ~/.config/zsh/.zshrc"
alias zrl="omz reload"
alias afg="code ~/.config/alacritty/alacritty.yml"
#> Shorts
alias ù="clear; fortune -e"
alias c="code"
alias x="exit"
#> Apps
alias stufetch="./freshfetch/usr/bin/freshfetch"

#>>> SECTION: Editor
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='code'
else
  export EDITOR='code'
fi

#>>> SECTION: Optional
ENABLE_CORRECTION="true"
# DISABLE_MAGIC_FUNCTIONS="true"
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# HIST_STAMPS="mm/dd/yyyy"

source $ZSH/oh-my-zsh.sh
