export LSCOLORS=Exfxcxdxbxegedabagacad
export ZLS_COLORS=$LS_COLORS
export CLICOLOR=true


#補完機能を使用する
autoload -U compinit promptinit
compinit
zstyle ':completion::complete:*' use-cache true
#zstyle ':completion:*:default' menu select true
zstyle ':completion:*:default' menu select=1

##大文字、小文字を区別せず補完する
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

##補完でカラーを使用する
autoload -U colors;colors
zstyle ':completion:*' list-colors "${LS_COLORS}"

##プロンプト色付け
PROMPT='[%F{magenta}%B%n%b@%F{cyan}%m%f]'
RPROMPT='[%F{green}%d%f]'

##kill の候補にも色付き表示
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([%0-9]#)*=0=01;31'

##コマンドにsudoを付けても補完
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin

##日付表示
alias history='history -E'


##tmux起動
if [ $SHLVL = 1 ]; then
    tmux attach || tmux && exit
fi

eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/versions/2.1.2/bin:$PATH"

PERL_MB_OPT="--install_base \"/Users/sinbei/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/sinbei/perl5"; export PERL_MM_OPT;
