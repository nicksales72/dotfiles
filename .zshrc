alias suu="sudo pacman -Syu"
alias code="codium"
alias vi="nvim"
alias vim="nvim"
alias cat="bat"
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

export CUDA_HOME=/usr/local/cuda
export PATH=${CUDA_HOME}/bin:${PATH}
export LD_LIBRARY_PATH=${CUDA_HOME}/lib64:$LD_LIBRARY_PATH
