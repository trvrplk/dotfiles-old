ZSH=$HOME/.oh-my-zsh


[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator


alias td="todo.sh"

alias uml="yumlme"

alias bake="bakefile -f gnu"

alias pwn="chown 0755"



alias jsify="/myface13214/Code/GitHub/emscripten/emcc"

alias postify="html2ps"
alias andwrite="| tee"


export FC=/usr/local/bin/f2c
alias pastie=full,style=pastie
alias bf=/bin/bfc.pir
alias c99=/bin/c99.pir
alias panesw="tmux select-pane"
alias muxjoin=i"tmux attatch -t"
alias mrd=redcarpet
alias lein=/usr/local/bin/lein
alias emacs=/usr/local/bin/emacs
export EDITOR="vim"
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="weddingcakes"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
#alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)

plugins=(vagrant lein rails3 ruby brew lol nyan capistrano django bundler)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/Users/myface13214/.rvm/gems/ruby-1.9.2-p290/bin:/Users/myface13214/.rvm/gems/ruby-1.9.2-p290@global/bin:/Users/myface13214/.rvm/rubies/ruby-1.9.2-p290/bin:/Users/myface13214/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/texbin:/usr/X11/bin:/Applications/flex_sdk/flex_sdk_2/bin/:/opt/local/bin:/opt/local/sbin:/usr/langs:~/ghar/devel/bin:/usr/bin/other:~/.405:$PATH

alias desk=~/Desktop
alias y2c=yaml2cue.py


# export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6
# export PATH=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Commands/:$PATH

PATH=$PATH:/usr/local/rvm/bin # Add RVM to PATH for scripting

export PATH="/Users/myface13214/.sm/bin:/Users/myface13214/.sm/pkg/active/bin:$PATH"
alias hotpto="http"
alias bi="b install --path vendor"
alias bil="bi --local"
alias bu="b update"
alias be="b exec"
alias binit="bi && b package && echo 'vendor/ruby' >> .gitignore"
alias b="bundle"

export BUNDLE_VENDOR="YES"

source ~/.zshenv

alias git="hub"

export EDITOR="vim"

alias g="git"

alias vi="vim"

export PATH=$PATH:~/bin
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

function huff {
  history | awk '{print $2}' | awk 'BEGIN {FS="|"}{print $1}' | sort | uniq -c | sort -n | tail | sort -nr
}

. ~/.functions.bash
