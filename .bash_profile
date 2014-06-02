# Prompt

print_before_the_prompt () {  
    printf "$txtred%s " "$PWD" 
}  
  
PROMPT_COMMAND=print_before_the_prompt
export PS1="$USER >> "


# Path
PATH=/usr/local/bin:/usr/bin:$PATH
export PATH

# Aliases

alias home="cd ~"
alias desktop="cd ~/Desktop"
alias dt="cd ~/Desktop"
alias root="cd /"
alias ..="cd .."
alias la="ls -lah"
alias refresh="source ~/.bash_profile"
alias unhide="sudo chflags nohidden"
alias hide="sudo chflags hidden"

# Functions

edit() {
  if [ "${1}" == "bash" ]; then
    open -e ~/.bash_profile
  else
    open -e ${1}
  fi
}

pub() {
  cat ~/.ssh/id_rsa.pub
}

alias simulator='open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/De‌​veloper/Applications/iPhone\ Simulator.app'
export PATH=$PATH:/Users/$USER/android-sdk-macosx/platform-tools/
export PATH=$PATH:/Users/$USER/android-sdk-macosx/tools/
