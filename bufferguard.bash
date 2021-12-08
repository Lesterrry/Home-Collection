cache=""
while true
do
	text=$(pbpaste)
	if [[ "$text" != "$cache" ]]
	then
		IFS='\n' read -ra ADDR <<< "$text"
		#unset 'ADDR[${#ADDR[@]}-1]'
		tailless=${ADDR[0]%?}
		noseless=${tailless:1}
		echo $noseless
		echo "$noseless" | pbcopy
		cache=$noseless
	fi
	sleep 1
done
