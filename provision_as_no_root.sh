#!/usr/bin/env bash

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk i java 8.0.265-open
sdk i java 14.0.2.hs-adpt 
sdk i gradle