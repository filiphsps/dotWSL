#!/bin/sh

set -eu

. ./common.sh

check_for_bash
check_os

if [ "$HAS_BASH" ]; then
    set -o pipefail
fi

case "$OS" in
    "macOS")
        ./scripts/install/install-macos.sh
    ;;
    "Debian Linux")
        ./scripts/install/install-debian.sh
    ;;
    "Debian WSL")
        ./scripts/install/install-debian.sh
    ;;
    "Ubuntu Linux")
        ./scripts/install/install-ubuntu.sh
    ;;
    "Ubuntu WSL")
        ./scripts/install/install-ubuntu.sh
    ;;
    "Alpine Linux")
        ./scripts/install/install-alpine.sh
    ;;
esac
