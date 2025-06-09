eval "$(/opt/homebrew/bin/brew shellenv)"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
(security find-certificate -a -p ls /System/Library/Keychains/SystemRootCertificates.keychain && security find-certificate -a -p ls /Library/Keychains/System.keychain) > $HOME/.mac-ca-roots && export REQUESTS_CA_BUNDLE="$HOME/.mac-ca-roots"

