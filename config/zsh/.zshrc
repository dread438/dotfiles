autoload -U colors && colors	# Load colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
setopt autocd
setopt interactive_comments

HISTSIZE=10000000
SAVEHIST=10000000
setopt inc_append_history

[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

SYNTAX_PLUG="/usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh"
#VI_MODE_PLUG="/usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh"

if [[ -f "$SYNTAX_PLUG" ]]; then
  source "$SYNTAX_PLUG" 2>/dev/null 
fi

if [[ -f "$VI_MODE_PLUG" ]]; then
  source "$VI_MODE_PLUG" 2>/dev/null 
fi