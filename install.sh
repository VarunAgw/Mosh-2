#!/bin/bash

wget "https://raw.githubusercontent.com/VarunAgw/Mosh-2/master/mosh" -O /usr/local/bin/mosh
wget "https://raw.githubusercontent.com/VarunAgw/Mosh-2/master/mosh-cache" -O /usr/local/bin/mosh-cache

chmod a+x /usr/local/bin/mosh
chmod a+x /usr/local/bin/mosh-cache