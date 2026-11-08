#!/bin/bash

# Exit code 10: Set code invalid (not 3 characters)
# Exit code 20: Set number invalid (not a positive number less than 10000)
# Exit code 30: File given invalid  
# Exit code 40: Edition invalid (not empty or 1 character)

if [ ${#1} -ne 3 ]; then
	exit 10
fi

if [ $2 -gt 9999 ]; then
	exit 20
elif [ $2 -lt 0 ]; then
	exit 20
fi

if [ ${#3} -gt 1 ]; then
	exit 40
fi

if [ -z "$3" ]; then
	output=$(curl -sS -H "User-Agent: MTGCardFetcher" -H "Accept: */*" https://api.scryfall.com/cards/"$1"/"$2" | jq '.name, .prices.usd')
elif [ "$3" = "f" ]; then
	output=$(curl -sS -H "User-Agent: MTGCardFetcher" -H "Accept: */*" https://api.scryfall.com/cards/"$1"/"$2" | jq '.name, .prices.usd_foil')
fi

echo "$output" | tr -d '"'
