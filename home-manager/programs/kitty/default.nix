{ config, pkgs, ... }:

{
  home.file.".config/kitty/kitty.conf".text = ''
# vim:ft=kitty

#zshell
shell zsh

# Remove close window confirm
confirm_os_window_close 0

# Font config
font_family      jetbrains mono nerd font
bold_font        jetbrains mono nerd font
italic_font      jetbrains mono nerd font
bold_italic_font jetbrains mono nerd font

font_size 12.0

# Window padding
window_padding_width 10

# The basic colors
foreground              #D8DEE9
background              #2E3440
selection_foreground    #000000
selection_background    #4C566A

# Cursor colors
cursor                  #81A1C1
cursor_text_color       #1E1E2E

# URL underline color when hovering with mouse
url_color               #0087BD

# Kitty window border colors
active_border_color     #B4BEFE
inactive_border_color   #6C7086
bell_border_color       #F9E2AF

# OS Window titlebar colors
wayland_titlebar_color system
macos_titlebar_color system

# Tab bar colors
active_tab_foreground   #11111B
active_tab_background   #CBA6F7
inactive_tab_foreground #CDD6F4
inactive_tab_background #181825
tab_bar_background      #11111B

# Colors for marks (marked text in the terminal)
mark1_foreground #1E1E2E
mark1_background #B4BEFE
mark2_foreground #1E1E2E
mark2_background #CBA6F7
mark3_foreground #1E1E2E
mark3_background #74C7EC

# The 16 terminal colors

# black
color0   #3B4252
color8   #4C566A

# red
color1   #BF616A
color9   #BF616A

# green
color2   #A3BE8C
color10  #A3BE8C

# yellow
color3   #EBCB8B
color11  #EBCB8B

# blue
color4  #81A1C1
color12 #81A1C1

# magenta
color5   #B48EAD
color13  #B48EAD

# cyan
color6   #88C0D0
color14  #8FBCBB

# white
color7   #E5E9F0
color15  #ECEFF4

linux_display_server    wayland
  '';
}