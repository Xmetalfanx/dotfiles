
######################################################
# for atuin

atd_delete() {
  local duration="$1"
  echo -e "Deleting entries before $duration ..."

  atsd  --before "${duration}" 'curl'|| true
  atsd  --before "${duration}" 'clear' || true
  atsd  --before "${duration}" 'yt-dlp' || true
  atsd  --before "${duration}" 'am' || true
  atsd  --before "${duration}" 'apt' || true
  atsd  --before "${duration}" 'brew' || true
  atsd  --before "${duration}" 'zshreset' || true
  atsd  --before "${duration}" 'file' || true
  atsd  --before "${duration}" 'cd' || true
  atsd  --before "${duration}" 'ats' || true
  atsd  --before "${duration}" 'atuin search' || true

  atuin history dedup --dry-run --before "${duration}" --dupkeep 1

}

atd_day() {
  atd_delete "1 days ago"
}

atd_week() {
  atd_delete "7 days ago"
}

atd_month() {
  atd_delete "30 days ago"
}

# End For Atuin
#####################################################
