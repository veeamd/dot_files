#!/bin/bash

# remove carthage cache
alias rmcc='rm -rf ~/Library/Caches/org.carthage.CarthageKit'
alias rmxd='rm -rf ~/Library/Developer/Xcode/DerivedData'
alias rmsc='rm -rf ~/Library/Caches/org.swift.swiftpm/'

# carthage bootstrap
alias cb='carthage bootstrap --platform ios --cache-builds'
# carthage build
alias cbd='carthage build --platform ios --no-skip-current'

# xcode-select
alias xs11='sudo xcode-select -s /Applications/Xcode11.7.app/Contents/Developer'
# default and latest xcode
alias xsd='sudo xcode-select -s /Applications/Xcode.app/Contents/Developer'
alias xsp='xcode-select -p'
