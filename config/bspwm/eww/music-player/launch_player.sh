#!/bin/sh

FILE="$HOME/.cache/eww_music_player"
CFG="$HOME/.config/bspwm/eww/music-player"

run() {
  eww --config "$CFG" open music-player
}

if [[ ! -f "$FILE" ]]; then
  touch "$FILE"
  run
else
  eww --config "$CFG" close music-player
  rm "$FILE"
fi
