# Prompt

#print_before_the_prompt () {  
#    printf "$PWD\n"  
#}  
  
#PROMPT_COMMAND=print_before_the_prompt
export PS1="$PWD | $USER >> "


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

slide() {
  cd ~/development/Slides/ && rvm 1.9.2
  if [ "${1}" == "s" ]; then
    rails s -u
  fi
}



pman() {
  man -t "${1}" | open -f -a /Applications/Preview.app
}

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi


rd() {
  if [ "${2}" == "kill" ]; then
    screen -r ${1}
  fi
  if [ "${2}" != "kill" ]; then
    cd ~/development/${1}/ && rvm 1.9.3-head@${1}
    if [ "${2}" == "s" ]; then
      screen -S ${1} -d -m guard
      rails s -u
    fi
  fi
}





pub() {
  cat ~/.ssh/id_rsa.pub
}

alias simulator='open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/De‌​veloper/Applications/iPhone\ Simulator.app'
export PATH=$PATH:/Users/ericwooley/android-sdk-macosx/platform-tools/
export PATH=$PATH:/Users/ericwooley/android-sdk-macosx/tools/