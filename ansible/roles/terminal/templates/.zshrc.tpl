export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="bira"
plugins=(git composer symfony2 debian zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/home/{{ system.user }}/bin:/home/{{ system.user }}/.composer/vendor/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"