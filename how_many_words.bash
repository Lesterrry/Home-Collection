text=$(pbpaste)
if [ -z "$text" ]; then
	echo '\033[32m\033[1mFound\033[0m nothing in the buffer'
else
	words=( $text )
	num=${#words[@]}
	if [[ $num > 1 ]]; then
		ex=words
	else
		ex=word
	fi
	echo '\033[32m\033[1mCounted\033[0m total of \033[1m'${#words[@]}'\033[0m' $ex
fi
