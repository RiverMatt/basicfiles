# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

bindkey -v
bindkey '^R' history-incremental-search-backward

#alias ls="ls --color=auto"
#alias ls.="ls -a --color=auto"
#alias lsl="ls -la --color=auto"
alias nordvpncs="nordvpn connect seattle"
alias tshift="sudo timeshift-autosnap && sudo update-grub"
alias scan="sudo arp-scan --localnet"
alias zip="zip -r"
#alias rsync="rsync -avhP"

# Rust replacements: exa, bat, ripgrep (rg), fd (find), procs, broot (tree+)
alias ls="exa --long"
alias ls.="exa --all --long"
alias tree="broot"

VISUAL="vim"
EDITOR="$VISUAL"

neofetch
