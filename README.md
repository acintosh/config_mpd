# My MPD configuration depends on systemd

## Installation 

```bash
# If system's mpd is running, it stops.
sudo systemctl stop mpd.socket
sudo systemctl stop mpd

# Clone and install.
git clone https://github.com/acintosh/config_mpd
cd config_mpd
bash ./install.sh
systemctl --user daemon-reload

# Start user's mpd.
systemctl --user start mpd
```


## Usage
### `mpc`
`mpc --host=$XDG_RUNTIME_DIR/mpd/socket play`

## TODO
- auto configuration for ncmpcpp
