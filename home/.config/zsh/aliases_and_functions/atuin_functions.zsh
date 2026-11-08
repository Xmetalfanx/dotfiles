
######################################################
# for atuin


# atd_delete_oldway() {
#   echo -e "Deleting entries before $duration ..."

#   atsd  --before "${duration}" 'curl'|| true
#   atsd  --before "${duration}" 'clear' || true
#   atsd  --before "${duration}" 'yt-dlp' || true
#   atsd  --before "${duration}" 'am' || true
#   atsd  --before "${duration}" 'apt' || true
#   atsd  --before "${duration}" 'brew' || true
#   atsd  --before "${duration}" 'zshreset' || true
#   atsd  --before "${duration}" 'file' || true
#   atsd  --before "${duration}" 'cd' || true
#   atsd  --before "${duration}" 'ats' || true
#   atsd  --before "${duration}" 'atuin search' || true

#   atuin history dedup --dry-run --before "${duration}" --dupkeep 1

# }


atd_duration() {
  local what_to_remove="${1}"

  atsd --before "${duration}" '${what_to_remove}' || true
}

atd_delete() {
  local duration="$1"
  echo -e "Deleting entries before $duration ..."

  atd_duration 'curl'
  atd_duration 'clear'
  atd_duration 'yt-dlp'
  atd_duration 'am'
  atd_duration 'apt'
  atd_duration 'brew'
  atd_duration 'zshreset'
  atd_duration 'file'
  atd_duration 'cd'
  atd_duration 'ats'
  atd_duration 'atuin search'

  sleep 2
  clear

  # ath dedup --dry-run --before "${duration}" --dupkeep 1
  ath dedup --before "${duration}" --dupkeep 1

}


##################################################################
# durations ... this is what should be called from the cli 

atd_day() {
  atd_delete "1 days ago"
}

atd_3day() {
  atd_delete "3 days ago"
}

atd_5day() {
  atd_delete "5 days ago"
}

atd_week() {
  atd_delete "7 days ago"
}

atd_month() {
  atd_delete "30 days ago"
}

# End For Atuin
#####################################################
