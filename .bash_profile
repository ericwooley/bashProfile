# Prompt
export PS1="$USER >> "


# Path
PATH=/usr/local/bin:/usr/bin:$PATH
export PATH

# Aliases

alias home="cd ~"
alias desktop="cd ~/Desktop"
alias ..="cd .."
alias lh="ls -lh"
alias la="ls -lah"
alias ls="ls -lh"
alias refresh="source ~/.bash_profile"
alias unhide="sudo chflags nohidden"
alias hide="sudo chflags hidden"
alias reset="echo -e \\\033c"

alias simulator='open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/De‌​veloper/Applications/iPhone\ Simulator.app'
export PATH=$PATH:/Users/$USER/android-sdk-macosx/platform-tools/
export PATH=$PATH:/Users/$USER/android-sdk-macosx/tools/
