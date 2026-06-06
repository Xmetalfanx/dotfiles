
######################################################
# for atuin
atd_5hr() {
  echo "Entries to be removed:"
  ats '.*' --before "5 hour ago"

  echo "Deleting..."
  atsd '.*' --before "5 hour ago" || true
}


atd_12hr() {
  echo "Entries to be removed:"
  ats '.*' --before "12 hour ago"

  echo "Deleting..."
  atsd '.*' --before "12 hour ago" || true
}

atd_day() {
  echo "Entries to be removed:"
  ats '.*' --before "1 days ago"

  echo "Deleting..."
  atsd '.*' --before "1 days ago" || true
}

atdw() {
  echo "Entries to be removed:"
  ats '.*' --before "7 days ago"

  echo "Deleting..."
  atsd '.*' --before "7 days ago" || true
}


atdm() {
  echo "Entries to be removed:"
  ats '.*' --before "30 days ago"

  echo "Deleting..."
  atsd '.*' --before "30 days ago" || true
}

# End For Atuin
#####################################################
