. ~/.alias

export PATH=/usr/local/bin:/usr/local/sbin:${PATH}

export EDITOR="vim"


# prompt with git && rbenv
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# set ps1
if [ -f $BASH_COMPLETION_DIR/git ] && [ -f `which rbenv` ]; then
  export PS1='\[\033[01;32m\]\u@\h\[\033[01;33m\] \w$(__git_ps1) \n\[\033[01;34m\]\$\[\033[00m\] '
fi

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

. $HOME/.git-completion.sh

# fast access to projects folder
CDPATH=".:~:~/Projetos"

. ~/.bashrc
