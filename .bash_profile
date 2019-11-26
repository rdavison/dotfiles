################################################################################
# Misc
################################################################################

function AacToM4a {
  for file in *.aac; do
    ffmpeg -i "$file" -codec: copy "${file:0:${#file}-4}.m4a"
  done
}

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
function K {
  kubectl --all-namespaces=true $@
}
function tojsonarray {
  sed '1 s/{/[{/' | tail -r | sed '1 s/}/}]/' | tail -r | sed 's/^}$/},/'
}
function kga {
  for i in $(kubectl api-resources --verbs=list --namespaced -o name | grep -v "events.events.k8s.io" | grep -v "events" | sort | uniq); do
    local result="$(kubectl --namespace $1 get --ignore-not-found $i)"
    if [ ! "$result" == "" ]; then
      echo "Resource: $i"
      echo "$result"
      echo ""
    fi
  done
}
export PATH=$HOME/.local/bin:$PATH
export PS1="\[\033[0;31m\]\w\[\033[0;32;m\]\$(ParseGitBranch)\n$ \[\033[0;39m\]"
export EDITOR=nvim
alias rt='TZ=UTC esy dune runtest'
alias kz='kubectl kustomize'
alias cat='bat'
alias yat='bat -l yaml'
alias jat='bat -l json'
alias grep='grep --color=auto'
alias kk=kubectl
alias ls=exa
alias tree='exa -T'
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
alias celar=clear
alias cealr=clear
alias ytdliphone="youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4'"

function edune {
  script -q /dev/null esy dune $@ | sed "s#$HOME/.esy/3________________________________________________________________#\$ESY#g"
}

if [ "$TERM_PROGRAM" == "vscode" ]; then
  alias vim=code
fi

################################################################################
# OCaml
################################################################################
test -r /Users/rdavison/.opam/opam-init/init.sh && . /Users/rdavison/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
eval $(opam env)
#alias utop='utop-full -safe-string -short-paths'

source $HOME/.bash_profile_secret

################################################################################
# Conda
################################################################################
#export PATH="/usr/local/miniconda3/bin:$PATH"
export PATH="/usr/local/opt/terraform@0.11/bin:$PATH"
