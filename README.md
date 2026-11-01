# MTGCardFetcher

A Bash script that can take input from a given card and store it to a collection.

## The Problem

I am a collector of Magic the Gathering cards and I don't have a place to store my collection or assess its value. While there are systems for digitally storing collections, none of them have stood out to me as particularly efficient or helpful, so I wanted to create something that I feel more comfortable using.

## How It Works

- Calls to the Scryfall API to find cards based off of set and set ID
- Stores the name of the card and its price in a given file
- Added functions for requesting if a card is already in the collection and total price of the collection

![System diagram](Diagram.png)

## Tech Stack

- **Language:** Bash
- **External tools:** curl, Scryfall API

## Setup

Step-by-step: how does someone who just cloned your repo get it
running?

```bash
git clone https://github.com/cdyvig/MTGCardFetcher
cd MTGCardFetcher
bash MTGCardFetcher   # tbd for when arguments are included
```

## Usage

```bash
bash MTGCardetcher.sh # plus arguments once implemented
```

## Roadmap

- [ ] Storing sets in the text file to have more accurate data on if a card is already present
- [ ] Searching with just a card name instead of a set number
- [ ] Removing cards from the collection
- [ ] Pulling images from Scryfall

## Author

Charlie Dyvig <br>
[my github!](github.com/cdyvig)
