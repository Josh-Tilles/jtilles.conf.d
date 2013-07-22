if status --is-login
	set --export PATH /usr/local/bin /usr/local/sbin $PATH
        # -x is short for --export
        set -x XDG_CACHE_HOME ~/Library/Caches
end
