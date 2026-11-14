
alias dlogin="docker login"
alias di="docker image"

# Using Debian as an example:

# # Build locally
# dbuild debian:stable

# # Test the image
# drun debian:stable

# combines dtag and dpush below
# dpublish debian:stable

# # Once satisfied, tag for Docker Hub
# dtag debian:stable

# # Push to Docker Hub
# dpush debian:stable



# The resulting Docker Hub image is:

# xmetal/linux:debian-stable

# For Arch:
# dbuild archlinux:latest
# drun archlinux:latest
# dpublish archlinux:latest

# Result: xmetal/linux:archlinux-latest

################################################################################
## Build/run steps

# 1 - Build an image, with Dockerfile
dbuild() {
    local image_name="$1"

    if [[ -z "$image_name" ]]; then
        echo "Usage: dbuild image:tag"
        return 1
    fi

    docker build -t "$image_name" .
}

# 2 - Run an interactive container
drun() {
    local image_name="$1"

    if [[ -z "$image_name" ]]; then
        echo "Usage: drun image:tag"
        return 1
    fi

    docker run --rm -it "$image_name" /bin/bash
}

## end of build/run (test) steps
################################################################################


################################################################################
# tag and push steps (unifying step at the end)

# Tag an image for Docker Hub
dtag() {
    local image_name="$1"
    local dockerhub_tag="${2:-${image_name//:/-}}"

    if [[ -z "$image_name" ]]; then
        echo "Usage: dtag image:tag [dockerhub-tag]"
        return 1
    fi

    docker image tag "$image_name" "xmetal/linux:$dockerhub_tag"
}

# Push an image to Docker Hub
dpush() {
    local hub_tag="${1//:/-}"

    if [[ -z "$1" ]]; then
        echo "Usage: dpush image:tag"
        return 1
    fi

    docker push "xmetal/linux:$hub_tag"
}

## end of tag and push
################################################################################

# Tag and push an image combined
dpublish() {
    local image_name="$1"

    if [[ -z "$image_name" ]]; then
        echo "Usage: dpublish image:tag"
        return 1
    fi

    dtag "$image_name" || return 1
    dpush "$image_name"
}

################################################################################
## cleanup or pruning 

# Cleanup unused Docker resources
dprune() {
    docker system prune -a
}
