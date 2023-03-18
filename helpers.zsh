function gcm() {
  git checkout main
}

function gc() {
  git checkout $1
}

function gcn() {
  git checkout -b $1
}

function git-soft() {
  git reset --soft HEAD~$1
}

function get-pid() {
  lsof -i :$1
}

function kill-pid() {
  kill -9 $1
}

function kill-port() {
  lsof -ti:$1 | xargs kill 
}

function get-artifactory-token-from-yarnrc-yml() {
  awk '/npmAuthToken/ {getline; print}' ~/.yarnrc.yml | tr -d ' ' | sed 's/^npmAuthToken: *//'
}

function get-fresh-artifactory-token() {
  curl -u ${ARTIFACTORY_USER_NAME}:${ARTIFACTORY_API_KEY} -X POST ${ARTIFACTORY_BASE_URL}/artifactory/api/security/token -d "username=${ARITFACTORY_USER_NAME}" -d "scope=member-of-groups:readers" 
}

alias projects="cd ~/Projects"

alias gitcreds="git credential-osxkeychain get"
