#!/bin/bash

function kolorek() {
  CZERWONY="echo -en \\033[1;31m\c"
  ZIELONY="echo -en \\033[1;32m\c"
  NORMALNY="echo -en \\033[0;39m\c"
}

kolorek

for plik in *; do
echo -n "Plik: ";${CZERWONY}; echo -n "$plik";${NORMALNY}; echo -n " :> ";${ZIELONY}; echo `head -1 "$plik"`;${NORMALNY}
done
