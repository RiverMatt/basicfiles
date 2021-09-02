# based on fox.zsh-theme

PROMPT='%{$fg[blue]%}┌[%{$fg_bold[blue]%}%n%{$reset_color%}%{$fg[blue]%}☮%{$fg_bold[blue]%}%M%{$reset_color%}%{$fg[blue]%}]%{$fg[blue]%}-%{$fg[blue]%}(%{$fg_bold[blue]%}%~%{$reset_color%}%{$fg[blue]%})$(git_prompt_info)
└> % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="-[%{$reset_color%}%{$fg[white]%}git://%{$fg_bold[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$fg[cyan]%}]-"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔%{$reset_color%}"
