#!/usr/bin/env bash

XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-${HOME}/.config}"
mkdir -p "${XDG_CONFIG_HOME}/mpd"
mkdir -p "${XDG_CONFIG_HOME}/systemd"
cp -r ./mpd/* "${XDG_CONFIG_HOME}/mpd/"
cp -r ./systemd/* "${XDG_CONFIG_HOME}/systemd/"

systemctl --user daemon-reload
systemctl --user start mpd
