#!/usr/bin/env bash
set -e

tmux_option() {
    local -r option=$(tmux show-option -gqv "$1")
    local -r fallback="$2"
    echo "${option:-$fallback}"
}
status-right-append-right() {
    local option=$(tmux_option status-right)
    option="${option}$1"
    tmux set-option -g status-right "$option"
}

status-right-append-right "$(tmux_option @tto-status-right-append-right)"
