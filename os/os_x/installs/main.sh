#!/bin/bash

cd "$(dirname "$BASH_SOURCE")" \
    && source '../../utils.sh' \
    && source './utils.sh'

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    ./install_xcode.sh

    print_in_green '\n  ---\n\n'

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    ./install_homebrew.sh
    brew_install 'Homebrew Cask' 'caskroom/cask/brew-cask' 'caskroom/cask'

    print_in_green '\n  ---\n\n'

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    brew_install 'Bash' 'bash'
    print_in_green '\n  ---\n\n'
    ./change_default_bash_version.sh
    brew_install 'Bash Completion 2' 'bash-completion2' 'homebrew/versions'
    print_in_green '\n  ---\n\n'

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    brew_install 'Dash' 'dash' 'caskroom/cask' 'cask'
    print_in_green '\n  ---\n\n'
    brew_install 'Cheatsheet' 'cheatsheet' 'caskroom/cask' 'cask'
    print_in_green '\n  ---\n\n'
    brew_install 'Appcleaner' 'appcleaner' 'caskroom/cask' 'cask'
    print_in_green '\n  ---\n\n'
    brew_install 'DockerToolBox' 'Caskroom/cask/dockertoolbox'
    print_in_green '\n  ---\n\n'
    brew_install 'Flux' 'flux' 'caskroom/cask' 'cask'
    print_in_green '\n  ---\n\n'
    brew_install 'Skitch' 'skitch' 'caskroom/cask' 'cask'
    print_in_green '\n  ---\n\n'
    brew_install 'Evernote' 'evernote' 'caskroom/cask' 'cask'
    print_in_green '\n  ---\n\n'
    brew_install 'Atom' 'atom' 'caskroom/cask' 'cask'
    print_in_green '\n  ---\n\n'
    brew_install 'Chrome' 'google-chrome' 'caskroom/cask' 'cask'
    print_in_green '\n  ---\n\n'
    brew_install 'Dropbox' 'dropbox' 'caskroom/cask' 'cask'
    print_in_green '\n  ---\n\n'
    brew_install 'FFmpeg' 'ffmpeg'
    print_in_green '\n  ---\n\n'
    brew_install 'Firefox' 'firefox' 'caskroom/cask' 'cask'
    print_in_green '\n  ---\n\n'
    brew_install 'Flash' 'flash' 'caskroom/cask' 'cask'
    print_in_green '\n  ---\n\n'
    brew_install 'ImageAlpha' 'imagealpha' 'caskroom/cask' 'cask'
    print_in_green '\n  ---\n\n'
    brew_install 'ImageMagick' 'imagemagick --with-webp'
    print_in_green '\n  ---\n\n'
    brew_install 'ImageOptim' 'imageoptim' 'caskroom/cask' 'cask'
    print_in_green '\n  ---\n\n'
    brew_install 'LICEcap' 'licecap' 'caskroom/cask' 'cask'
    print_in_green '\n  ---\n\n'
    brew_install 'Spectacle' 'spectacle' 'caskroom/cask' 'cask'
    print_in_green '\n  ---\n\n'
    brew_install 'VirtualBox' 'virtualbox' 'caskroom/cask' 'cask'
    print_in_green '\n  ---\n\n'
    brew_install 'Zopfli' 'zopfli'
    print_in_green '\n  ---\n\n'
    brew_install 'Pyenv' 'pyenv'
    print_in_green '\n  ---\n\n'
    brew install scala --with-docs
    print_in_green '\n  ---\n\n'
    brew install flow
    print_in_green '\n  ---\n\n'
    brew install watchman
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    ./update_and_upgrade.sh
    ./cleanup.sh

}

main
