#!/bin/bash
# Projet: Vortex
# Author: Linker Networks Inc.
# Date: 2018/08/21
#
# Execute example:
#    $ chmod +x ethtool.sh
#    $ ./ethtool.sh net0,net1

echo $@
array=( "$@" )
NET_IF_NAME=${#array[@]}

set_ethtool() {
            for (( i=1; i<${NET_IF_NAME}+1; i++ ));
            do
                    echo "===  Start  === ethtool for ""${array[$i-1]}"
                    ethtool -K  ${array[$i-1]} tx off sg off tso off
                    echo "===  End  === ethtool for ""${array[$i-1]}"
            done
}
set_ethtool
