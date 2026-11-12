alias dlogin="docker login"
alias di="docker image"

## IDEA: var wise i think it is handy to have say colons in tags.. distro with versions are obvious
## what i mean is like debian:stable

#####################################################################################
## build and/or tests step

## 1 - docker build
dbuild() {
  docker build -t $1 .
}

# gets to an interactive docker prompt
drun() {
  docker run -it $1 /bin/bash
}

##
#####################################################################################

#####################################################################################
# 2 - needs before pushing to dockerhub
# ?? does $1 have the colon?  A: yes (at least for examples like fedora, below)
# $2 has no colon ... say "fedora44" would be a tag, not "fedora:44"
dtag() {
  docker tag $1 xmetal/linux:$2
}

# 3 - Push to dockerhub
# may need to login first
dpush() {
  docker push xmetal/linux:$1
}

##
#####################################################################################

#####################################################################################
# only an idea for now
# idea: only do this if dbuild fully works (testing with drun maybe)
dpublish() {
  # dbuild wouldn't be here since i want to see and TEST it first

  # tags
  dtag $1 $2

  drun $1

}


#####################################################################################

#####################################################################################
## prune/cleanup

dprune() {
  docker system prune -a
}

#####################################################################################
