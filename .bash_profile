################################################################################
# General
################################################################################
function ParseGitBranch {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ -> \1/'
}
function kp {
  kubectl --namespace prod $@
}
function k {
  kubectl --namespace $@
}
export PATH=$HOME/.local/bin:$PATH
export PS1="\[\033[0;31m\]\w\[\033[0;32;m\]\$(ParseGitBranch)\n$ \[\033[0;39m\]"
alias grep='grep --color=auto'
alias ls=exa
alias sed=gsed
alias vim=/usr/local/bin/nvim
alias maek=make
alias mkae=make
alias mkea=make
alias meak=make
alias meka=make
alias amke=make
alias amek=make
alias akme=make
alias akem=make
alias aemk=make
alias aekm=make
alias kmae=make
alias kmea=make
alias kema=make
alias keam=make
alias kame=make
alias kaem=make
alias emak=make
alias emka=make
alias ekma=make
alias ekam=make
alias eamk=make
alias eakm=make

################################################################################
# OCaml
################################################################################
test -r /Users/rdavison/.opam/opam-init/init.sh && . /Users/rdavison/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
eval $(opam env)
#alias utop='utop-full -safe-string -short-paths'

source .bash_profile_secret
