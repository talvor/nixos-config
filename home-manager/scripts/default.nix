{ config, lib, pkgs, ... }:

let
  rofi2 = pkgs.writeShellScriptBin "rofi2" ''
rofi \
    -show drun \
    -theme "$HOME/.config/rofi/launcher.rasi"
  '';
  rofiWindow = pkgs.writeShellScriptBin "rofiWindow" ''
#!/usr/bin/env bash
## Run
rofi \
    -show drun \
    -theme "$HOME/.config/rofi/launcher.rasi"
  '';
  wallpaper_random = pkgs.writeShellScriptBin "wallpaper_random" ''
    if command -v swww >/dev/null 2>&1; then 
        killall dynamic_wallpaper
        swww img $(find ~/Pictures/wallpaper/. -name "*.png" | shuf -n1) --transition-type simple
    fi
  '';
  default_wall = pkgs.writeShellScriptBin "default_wall" ''
    if command -v swww >/dev/null 2>&1; then 
          swww img ~/Pictures/wallpaper/nixos_dark.png  --transition-type simple
    fi
  '';

  powermenu = pkgs.writeShellScriptBin "powermenu" ''
dir="$HOME/.config/rofi"

# CMDs
uptime="`uptime | sed -e 's/up //g'`"
host=`hostname`

# Options
shutdown=' Shutdown'
reboot=' Reboot'
lock=' Lock'
suspend=' Suspend'
logout=' Logout'
yes=' Yes'
no=' No'

# Rofi CMD
rofi_cmd() {
	rofi -dmenu \
		-p "$host" \
		-mesg "Uptime: $uptime" \
		-theme ''${dir}/powermenu.rasi
}

# Confirmation CMD
confirm_cmd() {
	rofi -theme-str 'window {location: center; anchor: center; fullscreen: false; width: 250px;}' \
		-theme-str 'mainbox {children: [ "message", "listview" ];}' \
		-theme-str 'listview {columns: 2; lines: 1;}' \
		-theme-str 'element-text {horizontal-align: 0.5;}' \
		-theme-str 'textbox {horizontal-align: 0.5;}' \
		-dmenu \
		-p 'Confirmation' \
		-mesg 'Are you Sure?' \
		-theme ''${dir}/powermenu.rasi
}

# Ask for confirmation
confirm_exit() {
	echo -e "$yes\n$no" | confirm_cmd
}

# Pass variables to rofi dmenu
run_rofi() {
	echo -e "$lock\n$suspend\n$logout\n$reboot\n$shutdown" | rofi_cmd
}

# Execute Command
run_cmd() {
	selected="$(confirm_exit)"
	if [[ "$selected" == "$yes" ]]; then
		if [[ $1 == '--shutdown' ]]; then
			systemctl poweroff
		elif [[ $1 == '--reboot' ]]; then
			systemctl reboot
		elif [[ $1 == '--suspend' ]]; then
			mpc -q pause
			amixer set Master mute
			systemctl suspend
		elif [[ $1 == '--logout' ]]; then
			hyprctl dispatch exit
		fi
	else
		exit 0
	fi
}

# Actions
chosen="$(run_rofi)"
case ''${chosen} in
    $shutdown)
		run_cmd --shutdown
        ;;
    $reboot)
		run_cmd --reboot
        ;;
    $lock)
		lockscreen
        ;;
    $suspend)
		run_cmd --suspend
        ;;
    $logout)
		run_cmd --logout
        ;;
esac
  '';

  lockscreen = pkgs.writeShellScriptBin "lockscreen" ''
swaylock \
	--screenshots \
	--clock \
	--indicator \
	--indicator-radius 100 \
	--indicator-thickness 7 \
	--effect-blur 7x5 \
	--effect-vignette 0.5:0.5 \
	--ring-color 2e3440 \
	--key-hl-color bf616a \
	--line-color 00000000 \
	--inside-color 434c5e \
	--separator-color 00000000 \
	--grace 2 \
	--fade-in 0.2
  ''; 
in
{
  home.packages = with pkgs; [
    rofi2
    rofiWindow
    wallpaper_random
    default_wall
    powermenu
	lockscreen
  ];

}
