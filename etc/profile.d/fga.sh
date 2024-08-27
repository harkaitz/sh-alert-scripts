fga() {
    if test @"$1" = @"--help" || test @"$1" = @"-h"; then
        echo "Usage: fga [JOB_ID]"
        echo ""
        echo "Wait the job to finish, then execute the command in TIMED_ALERT, or"
        echo "if not set notify-send(1) when installed."
        return 0
    elif test -n "${TIMED_ALERT}"; then
        local cmd="${TIMED_ALERT}"
    elif which notify-send >/dev/null 2>&1; then
        local cmd='notify-send "Command finished" "$?"'
    else
        echo >&2 "error: Please place the alert command in the TIMED_ALERT variable."
        return 1
    fi
    fg "$@"
    echo "${cmd}" >&2
    eval "${cmd}"
}
