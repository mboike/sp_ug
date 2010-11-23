#!/bin/bash
echo -n "Podaj ilość użytkowników:"
read users

wynik=`./genlogs.sh $users | cut -c38-47 | sort | uniq -c | sort -r | 
head -1`

echo "$wynik";
