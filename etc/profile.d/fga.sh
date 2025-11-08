fga() {
    if test @"$1" = @"--help" || test @"$1" = @"-h"; then
        echo "Usage: fga [JOB_ID]"
        echo ""
        echo "Wait the job to finish, then notify the user."
        return 0
    fi
    fg "$@" > ~/.fga
    ${NOTIFY_SEND:-notify-send -a} "${SHELL##*/}" "sh - $(cat ~/.fga)" "Command finished with $?" || true
    rm -f ~/.fga
}
