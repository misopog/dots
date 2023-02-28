export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="chromium"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export HOSTNAME"$(cat /etc/hostname)"

export CARGO_HOME="$XDG_DATA_HOME/cargo"
export PATH=$PATH:$HOME/.local/bin


# Starting X
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
