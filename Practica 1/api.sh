#!/bin/bash
git_usr="Chelie41"

echo "informacion de Chelie41 en gitusrapi.txt\n"
curl -s "https://api.github.com/users/$git_usr/repos" -o "gitusrapi.txt"
echo "Informacion de celabraciones en mexico en febrero en holiday.txt\n"
curl -s -d country="MX" -d year="2019" -d month="2" -d pretty -d key="cb6ad34d-9566-46f4-a2aa-7c6d0d7fc315" "https://holidayapi.com/v1/holidays" -o "holiday.txt"
echo "Informacion de lebron james en nba.txt"
curl -s "https://www.balldontlie.io/api/v1/players/237" -o "nba.txt"
