#!/bin/bash

echo "Mosh 2 installation started"

wget -q "https://raw.githubusercontent.com/VarunAgw/Mosh-2/master/mosh" -O /usr/local/bin/mosh
wget -q "https://raw.githubusercontent.com/VarunAgw/Mosh-2/master/mosh-cache" -O /usr/local/bin/mosh-cache
wget -q "https://raw.githubusercontent.com/VarunAgw/Mosh-2/master/mosh-reset" -O /usr/local/bin/mosh-reset

chmod a+x /usr/local/bin/mosh
chmod a+x /usr/local/bin/mosh-cache
chmod a+x /usr/local/bin/mosh-reset

echo "Mosh 2 installed succesfully. Please restart your shell program!"
