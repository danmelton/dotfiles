#!/bin/bash

declare dotfilesDirectory="$HOME/projects/dotfiles"


main() {

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Ensure that the following actions
    # are made relative to this file's path
    #
    # http://mywiki.wooledge.org/BashFAQ/028

    cd "$(dirname "$BASH_SOURCE")"

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Load utils

    if [ -x 'os/utils.sh' ]; then
        source 'os/utils.sh' || exit 1
    fi

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    ask_for_sudo

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    print_info 'Create symbolic links'
    ./os/create_symbolic_links.sh

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    print_info 'Install applications'

    ask_for_confirmation 'Do you want to install the applications/command line tools?'
    printf '\n'

    if answer_is_yes; then

        ./os/install_ruby_packages.sh
        print_in_green '\n  ---\n\n'

        ./os/install_applications.sh
        print_in_green '\n  ---\n\n'

        ./os/install_node_versions.sh
        print_in_green '\n  ---\n\n'

        ./os/install_npm_packages.sh

    fi

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    print_info 'Set preferences'

    ask_for_confirmation 'Do you want to set the custom preferences?'
    printf '\n'

    if answer_is_yes; then
        ./os/set_preferences.sh
    fi

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    print_info 'Restart'

    ask_for_confirmation 'Do you want to restart?'
    printf '\n'

    if answer_is_yes; then
        ./os/restart.sh
    fi

}

main
