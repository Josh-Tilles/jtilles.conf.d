if status --is-login
	set --export PATH ~/bin /usr/local/bin /usr/local/sbin $PATH
	# -x is short for --export
	set -x XDG_CACHE_HOME ~/Library/Caches
	# XDG_DATA_HOME defaults to "$HOME/.local/share"
	# XDG_CONFIG_HOME defaults to "$HOME/.config"
	# XDG_DATA_DIRS defaults to "/usr/local/share/:/usr/share/"
	# XDG_CONFIG_DIRS defaults to "/etc/xdg"
	# Cf. http://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html

	. ~/.profile.d/ruby.fish
	. ~/.profile.d/rbenv.fish
	. ~/.profile.d/PostgresApp.fish
end

if status --is-interactive
	set -x EDITOR 'emacsclient -c'
	set -x PSQL_EDITOR 'vim -c "set ft=sql"'
end
