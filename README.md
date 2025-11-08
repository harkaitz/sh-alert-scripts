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

alert-cmd

    Usage: ${ALERT_CMD:-alert-cmd} { -V | CMD... }
    
    Execute command, it it lasts more than a minute or it fails alerts
    the user executing ALERT_CMD.
    
    Default programs: quiet, notify-send
    Environment variables: QUIT, NOTIFY_SEND, ALERT_CMD_SECONDS

notify-send-multi

    Usage: notify-send-multi [-a APP] TITLE BODY
    
    Send notification to multiple notification utilities.
    
        APP CATEGORY NOTIFIERS,...
        APP .*       NOTIFIERS,...
        .*  .*       NOTIFIERS,...
    
    Configuration files: ~/.notify.lst
    Environment variables: QUIET, NOTIFY_SEND_MULTI_LST

notify-send-nircmd

    Usage: notify-send-nircmd [-a APP] SUBJECT BODY
    
    Send notification using nircmd (windows).

notify-send-ntfy

    Usage: notify-send-ntfy [-a APP] SUBJECT BODY
    
    Send alert using "ntfy.sh".
    
    Environment variables/settings: NTFY_TOPIC (required)
    Configuration file: ~/.config.sh

## Collaborating

Feel free to open bug reports and feature/pull requests.

More software like this here:

1. [https://harkadev.com/prj/](https://harkadev.com/prj/)
2. [https://devreal.org](https://devreal.org)
