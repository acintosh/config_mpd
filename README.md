# My MPD configuration depends on systemd

## Installation 
```bash
XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-${HOME}/.config}"
mkdir -p "${XDG_CONFIG_HOME}/mpd"
mkdir -p "${XDG_CONFIG_HOME}/systemd/user"
cp -r ./mpd/* "${XDG_CONFIG_HOME}/mpd"
cp ./systemd/user/* "${XDG_CONFIG_HOME}/systemd/user"

systemctl --user daemon-reload
systemctl --user start mpd
```

## Usage
### `mpc`
`mpc --host=$XDG_RUNTIME_DIR/mpd/socket play`

## TODO
- auto configuration for ncmpcpp
