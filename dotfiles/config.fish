set PATH $PATH ~/.config/composer/vendor/bin

function art
	php artisan $argv
end

function homestead
	cd ~/Homestead && vagrant $argv
end

starship init fish | source
