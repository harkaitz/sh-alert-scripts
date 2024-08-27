ALERT SCRIPTS
=============

Scripts for sending alerts and notifications.

## Notify when finished

When executing long-running commands (such as compiling code or performing
backups), it can be useful to receive notifications when these tasks finish.

This allows the user to step away from the terminal, perhaps to grab a coffee.

After sourcing [etc/profile.d/fga.sh](etc/profile.d/fga.sh) you can do the following:

    $ long-lasting-command
    ^Z
    $ fga
    ... the command runs.
    ... a notification is sent.
    $

The notification is sent executing the command in the $TIMED_ALERT variable. By
default notify-send(1) is used.

## Supported shells.

- GNU Bash
- Busybox for Linux and Windows.
- Busybox for Windows (the "Notify when finished" with fga doesn't work, no ^Z available).

## Send alerts to your phone.

- Create a "secret" topic in [ntfy.sh](https://ntfy.sh).
- Set NTFY_TOPIC environment variable, for example in "/etc/profile".

## Help

alert-ntfy

    Usage: alert-ntfy [-t TITLE] MESSAGE
    
    Send alert using "ntfy.sh". Please set the NTFY_TOPIC environment
    variable to the topic you want to send the alert to.

## Collaborating

For making bug reports, feature requests and donations visit
one of the following links:

1. [gemini://harkadev.com/oss/](gemini://harkadev.com/oss/)
2. [https://harkadev.com/oss/](https://harkadev.com/oss/)
