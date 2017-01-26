git diff --name-only $1 | xargs -n 1 php-cs-fixer fix --fixers=$PHPFIXER_FILTERS
