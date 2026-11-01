#!/bin/bash

curl -sS -H "User-Agent: MTGCardFetcher" -H "Accept: */*" https://api.scryfall.com/cards/khm/346 | jq '.name, .prices.usd'
