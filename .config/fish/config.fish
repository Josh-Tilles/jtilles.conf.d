if status --is-login
	set --export PATH /usr/local/bin /usr/local/sbin $PATH
        # -x is short for --export
        set -x XDG_CACHE_HOME ~/Library/Caches
end

if status --is-interactive
	set -x EDITOR 'emacsclient --tty'
	set -x PSQL_EDITOR 'vim -c "set ft=sql"'
	set -x PAGER vimpager
end
