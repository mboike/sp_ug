#!/bin/bash

echo -e "\\033[31mPodaj tekst do testowania:\\033[0m"
read tekst

echo -e "\\033[31mPodaj wyrazenie regularne:\\033[0m"
read wyrazenie

echo -e "\\033[31mPodaj tekst zastepujacy:\\033[0m"
read tekst_zastepczy

wynik=`echo $tekst | sed -e "s/$wyrazenie/$tekst_zastepczy/g"`

echo -e "\\033[31mWynik: $wynik\\033[0m"

