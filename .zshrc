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

##Configure PATH
export PYENV_ROOT="$HOME/.pyenv"
PATH="$HOME/bin:$HOME/.rbenv/bin:$PYENV_ROOT/bin:$PATH"

##tmux起動
##if [ $SHLVL = 1 ]; then
##    tmux attach || tmux && exit
##fi

##Configure about rbenv
eval "$(rbenv init -)"
##export PATH="$HOME/.rbenv/bin:$PATH"

##Configure about pyenv
##export PYENV_ROOT="$HOME/.pyenv"
##export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

##Configure about perl
export PERL_MB_OPT="--install_base \"/Users/sinbei/perl5\""
export PERL_MM_OPT="INSTALL_BASE=/Users/sinbei/perl5"
export PERL5LIB="/Users/sinbei/perl5/lib/perl5"

##Configure about Android Studio
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export STUDIO_JDK=/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk


export LANG="ja_JP.UTF-8"
export XMODIFIERS="@im=uim"
export GTK_IM_MODULE="uim"

##alias for objcopy/objdump (installed by brew package "crosstool-ng")
alias objcopy="gobjcopy"
alias objdump="gobjdump"
