function permfix
	find $argv -type d -print0 | xargs -0 chmod 0775
find $argv -type f -print0 | xargs -0 chmod 0664
end
