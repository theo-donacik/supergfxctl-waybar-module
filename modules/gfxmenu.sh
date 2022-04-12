width=-550
state=$(supergfxctl -S)
ans=$(printf "Integrated\nCompute\nHybrid\nDedicated\nVFIO" |wofi --dmenu --width=5 -L 5 --style=$HOME/.config/waybar/modules/wofistyle.css --hide-scroll --location 3 --x $width -p "State: $state")
case $ans in
  Integrated)
    supergfxctl -m integrated
    ;;

  Compute)
    supergfxctl -m compute
    ;;
  Hybrid)
    supergfxctl -m hybrid
    ;;
  Dedicated)
    supergfxctl -m dedicated
    ;;
  VFIO)
    supergfxctl -m vfio
    ;;
  *)
    echo $ans
    ;;
esac

echo $ans
