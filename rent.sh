#!/bin/sh

echo "Dobrodošli u PS5 servis za iznajmljivanje igrica!"
echo "Za izlaz unesite 'exit'."

while true; do
    echo
    printf "Unesite svoje ime: "
    if ! read ime; then
        echo "Doviđenja!"
        break
    fi

    if [ "$ime" = "exit" ]; then
        echo "Doviđenja!"
        break
    fi

    if [ -z "$ime" ]; then
        echo "Greška: Niste uneli ime. Pokušajte ponovo."
        continue
    fi

    printf "Zdravo %s! Koju PS5 igricu želite da igrate? " "$ime"
    if ! read igrica; then
        echo "Doviđenja!"
        break
    fi

    if [ "$igrica" = "exit" ]; then
        echo "Doviđenja!"
        break
    fi

    if [ -z "$igrica" ]; then
        echo "Greška: Niste uneli naziv igrice. Pokušajte ponovo."
        continue
    fi

    echo "Igrica '$igrica' je uspešno iznajmljena korisniku $ime."
    sleep 0.5
    printf "Uživajte u igranju!\n"
    echo "Zabeleženo u sistemu grešaka (stderr log)" 1>&2
done
