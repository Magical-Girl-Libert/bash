# Ubuntu bashのプロンプトHack!!!!（gitブランチ表示)
# https://qiita.com/ryosukue/items/bc1eae639e3950790eb9
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

export PS1='\[\033[01;32m\]\u@\h\[\033[01;33m\]'
if [ -f /etc/bash_completion.d/git-prompt ]; then
    export PS1=$PS1' \w$(__git_ps1) \n\[\033[01;34m\]\$\[\033[00m\] '
else
    export PS1=$PS1' \w \n\[\033[01;34m\]\$\[\033[00m\] '
fi

# パスワードマネージャー
if [ -f ~/.password/loadprofile.sh ]; then source ~/.password/loadprofile.sh ; fi

# Docker Config
if [ -f ~/.docker.profile ]; then source ~/.docker.profile ; fi

# java home
if [ -f ~/.java.home ]; then source ~/.java.home ; fi
