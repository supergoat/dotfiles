export EDITOR="nvim"
export VISUAL="nvim"

export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.tmux/plugins/tmuxifier/bin:$PATH"

plugins=(git)

source $ZSH/oh-my-zsh.sh

eval "$(tmuxifier init -)"
eval "$(starship init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
