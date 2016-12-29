zstyle ':completion:*' verbose yes
zstyle ':completion:*' completer _list _expand _complete _ignored _approximate
zstyle ':completion:*' max-errors 1 numeric
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' '+m:{A-Z}={a-z}'
zstyle ':completion:*:processes' command 'ps x -o pid,s,args'
zstyle ':completion:*:default' menu select=2
zstyle ':completion::complete:*' use-cache on
zstyle ':completion:*' use-cache true
zstyle ':completion::complete:*' cache-path $HOME/.cache
zstyle ':completion:*' group-name ''

autoload -Uz compinit; compinit
