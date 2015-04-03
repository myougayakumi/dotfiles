export LSCOLORS=Exfxcxdxbxegedabagacad
export ZLS_COLORS=$LS_COLORS
export CLICOLOR=true


#$BJd405!G=$r;HMQ$9$k(B
autoload -U compinit promptinit
compinit
zstyle ':completion::complete:*' use-cache true
#zstyle ':completion:*:default' menu select true
zstyle ':completion:*:default' menu select=1

##$BBgJ8;z!">.J8;z$r6hJL$;$:Jd40$9$k(B
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

##$BJd40$G%+%i!<$r;HMQ$9$k(B
autoload -U colors;colors
zstyle ':completion:*' list-colors "${LS_COLORS}"

##$B%W%m%s%W%H?'IU$1(B
PROMPT='[%F{magenta}%B%n%b@%F{cyan}%m%f]'
RPROMPT='[%F{green}%d%f]'

##kill $B$N8uJd$K$b?'IU$-I=<((B
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([%0-9]#)*=0=01;31'

##$B%3%^%s%I$K(Bsudo$B$rIU$1$F$bJd40(B
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin

##$BF|IUI=<((B
alias history='history -E'

##Configure PATH
export PYENV_ROOT="$HOME/.pyenv"
PATH="$HOME/bin:$HOME/.rbenv/bin:$PYENV_ROOT/bin:$PATH"

##tmux$B5/F0(B
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
