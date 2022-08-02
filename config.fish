# disabling hello message
set fish_greeting

# Aliases
alias ipython="ipython3"
alias vim="nvim"

# 4Rust 
export PATH="$HOME/.cargo/bin:$PATH"

# 4Haskell
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /home/levag/.ghcup/bin # ghcup-env


