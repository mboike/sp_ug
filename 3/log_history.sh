#!/bin/bash

echo -e "\\033[31mPodaj nazwe uzytkownika: \\033[0m"
read nazwa_uzytkownika 

echo -e "\\033[31mPodaj date: \\033[0m" 
read data

szukaj=`last "$nazwa_uzytkownika" | grep "$data" | wc -l`

echo -e "\\033[31m=============================================================
Nazwa uzytkownika: $nazwa_uzytkownika
Data: $data
Uzytkownik $nazwa_uzytkownika zalogowal sie $szukaj razy dnia $data
=============================================================\\033[0m"
