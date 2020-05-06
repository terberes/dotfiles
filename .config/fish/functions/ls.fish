# Defined in - @ line 1
function ls --description 'alias ls=exa --tree --level 1 --icons'
	exa --tree --level 1 --icons $argv;
end
