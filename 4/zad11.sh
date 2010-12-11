#!/bin/bash

function kolorek() {
  CZERWONY="echo -en \\033[1;31m\c"
  ZIELONY="echo -en \\033[1;32m\c"
  NORMALNY="echo -en \\033[0;39m\c"
}

echo -n "Stolica Egiptu? "
read odp

kolorek

if [ "$odp" = 'kair' ] ||  [ "$odp" = 'Kair' ]; then
	 ${ZIELONY}; echo "Dobra odpowiedz!"; ${NORMALNY}
else
	${CZERWONY}; echo "Zla odpowiedz!"; ${NORMALNY}
fi
