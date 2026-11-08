alias fileb="file --brief"
alias filemt="file --brief --mime-type"

file_details() {
    fileb "$1"
    file -ib "$1"
    filemt "$1"
}