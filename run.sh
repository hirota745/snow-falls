#!/bin/bash

set -e

case "$1" in
    "penguin")
        xsetroot -solid "#c5e1f1"
        /usr/bin/xpenguins -n 32
        ;;
    *)
        /usr/games/xsnow -bg "#0e1b3f" -solidbg
        ;;
esac
