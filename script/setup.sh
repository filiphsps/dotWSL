#!/bin/sh

set -eu

. $PWD/script/common.sh

check_for_bash
check_os

if [ "$HAS_BASH" ]; then
    set -o pipefail
fi

case "$OS" in
    "macOS")
        . $PWD/script/install/install-macos.sh
    ;;
    "Debian (Linux)")
        . $PWD/script/install/install-debian.sh
    ;;
    "Debian (WSL)")
        . $PWD/script/install/install-debian.sh
    ;;
    "Ubuntu (Linux)")
        . $PWD/script/install/install-ubuntu.sh
    ;;
    "Ubuntu (WSL)")
        . $PWD/script/install/install-ubuntu.sh
    ;;
    "Alpine (Linux)")
        . $PWD/script/install/install-alpine.sh
    ;;
esac
