# aliases
alias sshp520='ssh -Y zhixiang@192.168.116.14'
alias sshpcl5='ssh -Y zhixiang@10.10.16.64'
alias tff='rsync -avP -e "ssh -p22"'

alias sshpa='ssh -Y pa-pub.umd.edu'
alias ssha1='ssh -Y augers1.phys.unm.edu -p 2013'
alias ssha2='ssh -Y augers2.phys.unm.edu -p 22'
alias sshhawc='ssh -Y hawc@augers2.phys.unm.edu -p 22'
alias sshjohn='ssh -Y johnm@augers2.phys.unm.edu -p 22'
alias sshfsa1='sshfs -p 2013 augers1.phys.unm.edu:/home/zhixiang augers1'
alias sshfsa2='sshfs -p 22 augers2.phys.unm.edu:/home/zhixiang augers2'
alias ll='ls -lF'
alias la='ls -A'
alias l='ls -CF'

# environment via anaconda
anaconda(){
  export PATH="/home/zhixiang/anaconda3/bin:$PATH"
  source /home/zhixiang/anaconda3/bin/activate
  export OMP_NUM_THREADS=1
  export MKL_NUM_THREADS=1
  export NUMEXPR_NUM_THREADS=1
}
anaconda


# miscellaneous
alias python=python3
alias tf='source ~/tensorflow/bin/activate'
export TF_CPP_MIN_LOG_LEVEL=2 # silence the tensorflow CPU warning

export PRESERVE_LD_LIBRARY_PATH="$LD_LIBRARY_PATH" 

#EOF
