#!/bin/sh

export PWD=$(pwd)

check_for_bash() {
    printf "Checking if Bash...\t\t"
    if [ "${BASH_VERSION:-}" ]; then
        export HAS_BASH=1
        echo "$BASH_VERSION"
    else
        export HAS_BASH=
        echo "NO"
    fi
}

check_os() {
    printf "Detecting OS...\t\t\t"
    case "$(uname)" in
        "Darwin")
            export OS="macOS"
        ;;
        "Linux")
            if [ $(grep -i Microsoft /proc/version) ]; then
                export OS="WSL"
            else
                export OS="Linux"
            fi

            case "$(cat /etc/os-release)" in
                *Ubuntu*)
                    export OS="Ubuntu ($OS)"
                ;;
                *Debian*)
                    export OS="Debian ($OS)"
                ;;
                *Raspbian*)
                    export OS="Debian ($OS)"
                ;;
                *Alpine*)
                    export OS="Alpine ($OS)"
                ;;
            esac
        ;;
    esac
    echo "$OS"
}

todo() {
    echo "TODO: $1!"
    exit 1
}
