#!/bin/bash

# remove carthage cache
alias rmcc='rm -rf ~/Library/Caches/org.carthage.CarthageKit'

# carthage bootstrap
alias cb='carthage bootstrap --platform ios --cache-builds'

# xcode-select
alias xs11='sudo xcode-select -s /Applications/Xcode11.7.app/Contents/Developer'
# default and latest xcode
alias xsd='sudo xcode-select -s /Applications/Xcode.app/Contents/Developer'
alias xsp='xcode-select -p'
