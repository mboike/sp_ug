#!/bin/bash

liczba=`python -c "import random; print random.randrange(1,50);"`

echo -e "\\033[31mPodaj liczbę:\\033[0m"
read liczba_uzytkownika

while [ $liczba != $liczba_uzytkownika ]; do 
if [ $liczba -gt $liczba_uzytkownika ]; then
   echo "Za mało."
   echo -e "\\033[31mPodaj liczbę:\\033[0m"
   read liczba_uzytkownika
elif [ $liczba -lt $liczba_uzytkownika ]; then 
  echo "Za dużo."
  echo -e "\\033[31mPodaj liczbę:\\033[0m"
  read liczba_uzytkownika
elif [ $liczba = $liczba_uzytkownika ];then  
  break
fi
done

echo "Trafiłeś!"
