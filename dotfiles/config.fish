function art
	php artisan $argv
end

function homestead
	cd ~/Homestead
	
	if test $argv -z
		vagrant up
	else if test $argv[1] = 'r'
		vagrant reload -p
	else if test $argv[1] = 'edit'
		gedit ./Homestead.yaml
	else
		vagrant $argv
	end
end
