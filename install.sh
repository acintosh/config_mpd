#!/usr/bin/env bash

ROOT_DIR="$(dirname $0)"
XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-${HOME}/.config}"
mkdir -p "${XDG_CONFIG_HOME}/mpd"
mkdir -p "${XDG_CONFIG_HOME}/systemd"
cp -r "${ROOT_DIR}"/mpd/* "${XDG_CONFIG_HOME}/mpd/"
cp -r "${ROOT_DIR}"/systemd/* "${XDG_CONFIG_HOME}/systemd/"
