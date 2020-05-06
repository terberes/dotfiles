# Defined in - @ line 1
function la --description 'alias la=exa --tree --level 1 --icons --long --header --all'
	exa --tree --level 1 --icons --long --header --all $argv;
end
