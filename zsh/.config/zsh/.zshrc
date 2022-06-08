#>>>>> Stu's take on Oh My ZSH

#>>> SECTION: Zsh
export EDITOR='code'
export TERMINAL='alacritty'
export TERM="xterm-256color"

#>>> SECTION: OMZ
export ZSH="$HOME/.oh-my-zsh"
ZSH_CUSTOM="$HOME/.config/zsh/custom"
#> Updates
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 1
#> Theming
ZSH_THEME="stu"
ZSH_THEME_RANDOM_CANDIDATES=(  )
ZSH_THEME_RANDOM_QUIET="true"
#> Plugins
plugins=(aliases alias-finder alias-tips command-not-found debian git)

#>>> SECTION: Aliases
#> OMZ
alias zfg="code ~/.config/zsh/.zshrc"
alias zrl="omz reload"
#> Alacritty
alias afg="code ~/.config/alacritty/alacritty.yml"
#> Shorts
alias cf="cd ~; clear; fortune -e"
alias c="code"
alias x="exit"
#> Apps
alias stufetch="./freshfetch/usr/bin/freshfetch"

#>>> SECTION: Optional
ENABLE_CORRECTION="true"
# DISABLE_MAGIC_FUNCTIONS="true"
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# HIST_STAMPS="mm/dd/yyyy"

#>>> SECTION: Bottom Scripts, fuck knows why but they go here.
#> Run OMZ
source $ZSH/oh-my-zsh.sh
#> Print a fortune at start
fortune -e
