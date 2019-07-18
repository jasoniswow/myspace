# Set up the prompt

autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups sharehistory

# Keep 10000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'


# customized --------------------------------------------------------------------
if [[ "$PRESERVE_LD_LIBRARY_PATH" != "" ]]; then
  export LD_LIBRARY_PATH="$PRESERVE_LD_LIBRARY_PATH"
  #echo "restored LD_LIBRARY_PATH"
  #export -n PRESERVE_LD_LIBRARY_PATH
fi
export PRESERVE_LD_LIBRARY_PATH="$LD_LIBRARY_PATH"

# aliases
alias ssh='ssh -Y'
alias sshp520='ssh -Y zhixiang@192.168.116.14'
alias sshpcl5='ssh -Y zhixiang@10.10.16.64'
alias sshpa='ssh -Y pa-pub.umd.edu'
alias ssha1='ssh -Y augers1.phys.unm.edu -p 2013'
alias ssha2='ssh -Y augers2.phys.unm.edu -p 22'
alias sshhawc='ssh -Y hawc@augers2.phys.unm.edu -p 22'
alias sshjohn='ssh -Y johnm@augers2.phys.unm.edu -p 22'
alias sshfsa1='sshfs -p 2013 augers1.phys.unm.edu:/home/zhixiang augers1'
alias sshfsa2='sshfs -p 22 augers2.phys.unm.edu:/home/zhixiang augers2'
alias ll="ls -lF --color='always'"
alias la='ls -A'
alias l='ls -CF'
alias tf1='rsync -avP -e "ssh -p2013"'
alias tf2='rsync -avP -e "ssh -p22"'

# environment via anaconda
anaconda(){
  export PATH="/home/zhixiang/anaconda3/bin:$PATH"
  source /home/zhixiang/anaconda3/bin/activate
  export OMP_NUM_THREADS=1
  export MKL_NUM_THREADS=1
  export NUMEXPR_NUM_THREADS=1
}
#anaconda

# miscellaneous
alias python=python3
alias tf='source ~/tensorflow/bin/activate'
export TF_CPP_MIN_LOG_LEVEL=2 # silence the tensorflow CPU warning

#EOF




