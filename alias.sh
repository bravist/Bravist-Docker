alias php="docker exec $(docker ps -a | grep php-fpm-docker | cut -d ' ' -f 1) php"
alias composer="docker exec $(docker ps -a | grep php-fpm-dokcer | cut -d ' ' -f 1) composer"
alias mysql="docker exec $(docker ps -a | grep mysql-docker | cut -d ' ' -f 1) mysql"
