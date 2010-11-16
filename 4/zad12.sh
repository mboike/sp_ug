#!/bin/bash

liczba=`python -c "import random; print random.randrange(1,50);"`

echo -e "\\033[31mPodaj liczbę:\\033[0m"
read liczba_uzytkownika

if [ $liczba -gt $liczba_uzytkownika ]; then
   echo "Za mało."
elif [ $liczba -lt $liczba_uzytkownika ]; then
  echo "Za dużo."
elif [ $liczba = liczba_uzytkownika ]; then 
 echo "Trafiony!"		
fi

