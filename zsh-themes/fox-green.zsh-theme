# based on fox.zsh-theme

PROMPT='%{$fg[green]%}┌[%{$fg_bold[green]%}%n%{$reset_color%}%{$fg[green]%}☮%{$fg_bold[green]%}%M%{$reset_color%}%{$fg[green]%}]%{$fg[green]%}-%{$fg[green]%}(%{$fg_bold[green]%}%~%{$reset_color%}%{$fg[green]%})$(git_prompt_info)
└> % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="-[%{$reset_color%}%{$fg[white]%}git://%{$fg_bold[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$fg[green]%}]-"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔%{$reset_color%}"
