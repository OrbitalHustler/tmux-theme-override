#!/usr/bin/env bash
set -e

status-right-append-right() {
    local -r option=$(tmux show-option -g "status-right")
    option="${option}${$1}"
    tmux set-option -g "$option"
}

status-right-append-right "$(tmux show-option @tto-status-right-append-right)"
