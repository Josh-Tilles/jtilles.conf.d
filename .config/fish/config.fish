set BROWSER 'open /Applications/Safari.app'
set --export EDITOR 'choc -w'
set --export PAGER vimpager
set --export PSQL_EDITOR 'vim -c "set filetype=sql"' # as suggested @ http://www.xenoterracide.com/2008/11/postgresql-edit-and-syntax-highlighting.html

set PATH /usr/local/bin $PATH
set PATH /usr/local/sbin $PATH
set PATH /usr/local/share/python $PATH
set PATH /usr/local/share/python3 $PATH
set PATH $HOME/bin $PATH

# Homebrew recommended this upon installing Node.js
set PATH $PATH /usr/local/share/npm/bin

set --export TERM 'xterm-256color'

set --export NODE_PATH /usr/local/lib/node_modules
set PYTHON_PATH /usr/local/lib/python
# set DBPATH /usr/local/var/postgres
# ^ I'm not sure if this should still be set if I'm going to use Postgres.app

set --export JAVA_HOME (/usr/libexec/java_home)


function latexdef -d "Show definitions of LaTeX commands"
	texdef --tex latex --find $argv
end

function MavenMarg -d "Generate the Marginalia docs for the current Pallet project"
	mvn -D=marginalia.version=0.8.0-SNAPSHOT zi:marginalia
end



# set fish_complete_path $HOME/.config/fish/notmancomps $fish_complete_path


# eval (gpg-agent --daemon --csh --write-env-file "$HOME/.gpg-agent-info")
# I expect this to run something like:  setenv GPG_AGENT_INFO /tmp/gpg-d8SaxT/S.gpg-agent

set --export GPG_TTY (tty)

# from http://hints.macworld.com/article.php?story=20090511115821563
# function wman -d "view your nicely-formatted Darwin-specific `man`pages in a tab in your browser."
# 	set url "man -w ${1} | sed 's#.*\(${1}.\)\([[:digit:]]\).*\$#http://developer.apple.com/documentation/Darwin/Reference/ManPages/man\2/\1\2.html#'"
# 	open (eval $url)
# end