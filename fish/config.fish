if status --is-interactive

umask 066

set -x -g LANG de_DE.UTF-8
set -x -g PATH_SEPARATOR :

set -x -g PATH /usr/bin /usr/local/bin /home/adrian/bin /usr/local/bin /usr/local/plan9/bin
set -x -g PLAN9 /usr/local/plan9

set -x -g BUG_PROJECT /home/adrian/proj/begun/potion/.bugdb
set -x -g EDITOR e
set -x -g VISUAL sam
set -x GPG_TTY (tty)

#apply the functions to the current shell

source /home/adrian/.config/fish/functions.fish

#prompts

function fish_greeting
	true
end

function fish_prompt
	set_color 444444

	echo -n (pwd)

	set_color normal
	
	echo -n ' » '
end

end
