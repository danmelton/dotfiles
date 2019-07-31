cd "$(dirname "$BASH_SOURCE")" \
    && source '../../utils.sh' \
    && source './utils.sh'

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {
    brew_tap 'AdoptOpenJDK/openjdk'
    brew_install 'Java' 'adoptopenjdk8' 'caskroom/cask' 'cask'
}
