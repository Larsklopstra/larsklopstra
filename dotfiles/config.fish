function art
	php artisan $argv
end

function homestead
	cd ~/Homestead
	
	if test $argv -z
		gedit ./Homestead.yaml
	else if test $argv[1] = 'r'
		vagrant reload -p
	else if test $argv[1] = 'edit'
		vagrant up
	else
		vagrant $argv
	end
end
