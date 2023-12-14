width=-520
state=$(supergfxctl -S)
ans=$(printf "Integrated\nHybrid" |wofi --dmenu --width=5 -L 3 --style=$HOME/.config/waybar/modules/wofistyle.css --hide-scroll --location 3 --x $width -p "State: $state")
case $ans in
  Integrated)
      supergfxctl -m Integrated
    ;;
  Hybrid)
    supergfxctl -m Hybrid
    ;;
  *)
    echo $ans
    ;;
esac

echo $ans

