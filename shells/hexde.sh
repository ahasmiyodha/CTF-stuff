#!/bin/bash

red='\033[0;31m'

echo -e " ${red}
.__                        .___                      .___      
|  |__   ____ ___  ___   __| _/____   ____  ____   __| _/____  
|  |  \_/ __ \\  \/  /  / __ |/ __ \_/ ___\/  _ \ / __ |/ __ \ 
|   Y  \  ___/ >    <  / /_/ \  ___/\  \__(  <_> ) /_/ \  ___/ 
|___|  /\___  >__/\_ \ \____ |\___  >\___  >____/\____ |\___  >
     \/     \/      \/      \/    \/     \/           \/    \/ "

green='\033[0;32m'     
echo -e  "${green}[+]Author  : Ritik Kumar                  [+]" 
echo "[+]Project : hexdecode                    [+]"
echo "[+]Github  : https://github.com/asur3228  [+]"
echo "[+]website : https://binb4sh.blogspot.com [+]"


# Function to decode hexadecimal
decode_hex() {
    echo "$1" | xxd -r -p
}

# Prompt user for hexadecimal input
read -p "Enter a hexadecimal value: " hex_value

# Check if input is provided
if [[ -z "$hex_value" ]]; then
    
    echo -e "No input provided. Please enter a hexadecimal string."
    exit 1
fi

# Decode the hexadecimal value
decoded_value=$(decode_hex "$hex_value")

# Output the decoded string

echo "Decoded string: $decoded_value"



