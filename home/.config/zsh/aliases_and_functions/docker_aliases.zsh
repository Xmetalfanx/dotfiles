
alias dlogin="docker login"
alias di="docker image"

# Build an image
dbuild() {
    local image_name="$1"

    if [[ -z "$image_name" ]]; then
        echo "Usage: dbuild image:tag"
        return 1
    fi

    docker build -t "$image_name" .
}

# Run an interactive container
drun() {
    local image_name="$1"

    if [[ -z "$image_name" ]]; then
        echo "Usage: drun image:tag"
        return 1
    fi

    docker run --rm -it "$image_name" /bin/bash
}

# Tag an image for Docker Hub
dtag() {
    local image_name="$1"
    local hub_tag="${2:-${image_name//:/-}}"

    if [[ -z "$image_name" ]]; then
        echo "Usage: dtag image:tag [hub-tag]"
        return 1
    fi

    docker image tag "$image_name" "xmetal/linux:$hub_tag"
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

# Tag and push an image
dpublish() {
    local image_name="$1"

    if [[ -z "$image_name" ]]; then
        echo "Usage: dpublish image:tag"
        return 1
    fi

    dtag "$image_name" || return 1
    dpush "$image_name"
}

# Cleanup unused Docker resources
dprune() {
    docker system prune -a
}
