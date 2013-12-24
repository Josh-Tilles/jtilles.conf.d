# LOGIN SHELL CONFIGURATION

export ENV=$HOME/.shrc

export XDG_CACHE_HOME="$HOME/Library/Caches"
# XDG_DATA_HOME defaults to "$HOME/.local/share"
# XDG_CONFIG_HOME defaults to "$HOME/.config"
# XDG_DATA_DIRS defaults to "/usr/local/share/:/usr/share/"
# XDG_CONFIG_DIRS defaults to "/etc/xdg"
# Cf. http://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html

export PATH="~/bin:/usr/local/bin:/usr/local/sbin:$PATH"

# Haskell executables
export PATH="$HOME/Library/Haskell/bin:$PATH"

# More Haskell (Cabal, really) executables
export PATH="$HOME/.cabal/bin:$PATH"

# (La|Xe)TeX
export PATH='/usr/local/texlive/2012/bin/x86_64-darwin':$PATH

. $HOME/.profile.d/ruby.sh
. $HOME/.profile.d/rbenv.sh
. $HOME/.profile.d/PostgresApp.sh
