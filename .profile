# LOGIN SHELL CONFIGURATION

export ENV=$HOME/.shrc

export EDITOR='choc -w'
export PSQL_EDITOR='vim -c "set ft=sql"'
export PAGER=vimpager

export PATH='/usr/local/bin':'/usr/local/sbin':$PATH

# Haskell executables
export PATH="$HOME/Library/Haskell/bin:$PATH"

# More Haskell (Cabal, really) executables
export PATH="$HOME/.cabal/bin:$PATH"

# (La|Xe)TeX
export PATH='/usr/local/texlive/2012/bin/x86_64-darwin/':$PATH

# example: latexdef -f newcommand
alias latexdef='texdef --tex latex'