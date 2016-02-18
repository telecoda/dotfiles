export GOPATH=$HOME
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$HOME/src/github.com/yoyowallet/yoyo-utils/scripts
export PATH=$PATH:$HOME/Development/terraform
export PATH=$PATH:$HOME/Development/packer
export PATH=$PATH:/usr/local/go/bin


export PIP_REQUIRE_VIRTUALENV=true
syspip(){
   PIP_REQUIRE_VIRTUALENV="" pip "$@"
}

eval "$(docker-machine env default)"

parse_git_branch() {

            git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}

if [[ $- == *i* ]]
then

green=$(tput setaf 2)
blue=$(tput setaf 4)
bold=$(tput bold)
reset=$(tput sgr0)

GIT_PS1_SHOWDIRTYSTATE=true

export PS1='\u@\h:\W\[$green$bold\] $(parse_git_branch) \[$reset\]\$ '

fi

source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash

alias proto_gen="make -f ~/src/github.com/yoyowallet/yoyo-utils/yyp/protobuf-gen/Makefile"
alias run_services="run-services.sh"
alias gocover="~/Development/scripts/gocover.sh"
alias gocoveri="~/Development/scripts/gocoveri.sh"
#alias vim='/usr/local/Cellar/vim/7.4.884/bin/vim'
#alias vi='/usr/local/Cellar/vim/7.4.884/bin/vim'

alias ssh_prod='ssh -i ~/.ssh/Prod2.cer ubuntu@bastion.prod2.justyoyo.net'
alias ssh_dev='ssh -i ~/.ssh/Dev1.cer ubuntu@bastion.dev1.justyoyo.net'
alias ssh_stg='ssh -i ~/.ssh/Staging1.pem ubuntu@bastion.staging1.justyoyo.net'


alias gti=git

source /usr/local/bin/virtualenvwrapper.sh

[[ -s "/Users/robbaines/.gvm/scripts/gvm" ]] && source "/Users/robbaines/.gvm/scripts/gvm"
eval "$(rbenv init -)"
