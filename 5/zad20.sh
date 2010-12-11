#!/bin/bash
echo -n "Podaj ilosc uzytkownikow: "
read users

function kolorek() {
  ZIELONY="echo -en \\033[1;32m\c"
  NORMALNY="echo -en \\033[0;39m\c"
}

echo "cierpliwosci.."

wynik=`./genlogs.sh $users | grep "Make transfer" | sed -e 's/.* amount: //' -e 's/ (.*//' | sort -gr | head -1`

kolorek

echo -n "Najwyzsza kwota przelewu to:"; ${ZIELONY}; echo -n " $wynik "; ${NORMALNY};
