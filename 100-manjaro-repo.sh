##!/bin/bash
#set -e
#
##########################################################
#                                                        #
#               SMD-Arch-XFCE script                     #
#  ArchLinux Applications Automatic Installation Script  #
#  Inspired and Forked From                              #
#  https://github.com/SofianeHamlaoui/ArchI0             #
#  And                                                   #
#  https://github.com/arcolinuxd/arco-xfce               #
##########################################################
#  +FIRST  : sudo chmod +x arch-xfce.sh                  #
#                (Give EXEC Access To Script)            #
#  +TO RUN    : ./arch-xfce.sh                           #
##########################################################
#                                                        #
#                DO NOT JUST RUN THIS.                   #
#       EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.         #
#                                                        #
##########################################################
#
#
#  TO DO:
#
#
######################## Variables #######################
#
# b=bold u=underline bl=black r=red g=green
# y=yellow bu=blue m=magenta c=cyan w=white
# endc=end-color enda=end-argument
b='\033[1m'
u='\033[4m'
bl='\E[30m'
r='\E[31m'
g='\E[32m'
y='\E[33m'
bu='\E[34m'
m='\E[35m'
c='\E[36m'
w='\E[37m'
endc='\E[0m'
enda='\033[0m'
version="20201031-MAN"

####################### Functions ########################

function install {
  # Check If Package Is Installed
  if pacman -Qi $1 &> /dev/null; then
      echo -e " [${g}✔${endc}]::[${b}"$1"${enda}] Is Already Installed!"
  else
      sudo pacman -S --noconfirm --needed $1
      # Verify Successful Installation
    if pacman -Qi $package &> /dev/null; then
      echo -e " [${g}✔${endc}]::[${b}"$1"${enda}]: Installed!"
    else
      echo -e " [${r}!${endc}]::[${b}"$1"${enda}]: ${r}NOT Installed!${endc}"
    fi
  fi
}

function category {
  echo -e " [${g}✔${endc}]::Installing Software For Category ${b}${bu}["$1"]${endc}${enda}"
  echo
}

function end_category {
  echo
  echo -e " [${g}✔${endc}]::Category ${bu}${b}["$1"]${enda}${endc} Installed!"
  echo
}

###############################################################################

category Bash

list=(
asciiquarium
cmatrix
cool-retro-term
cowfortune
fortune-mod
mc
ranger
sl
)

count=0

for name in "${list[@]}" ; do
  count=$[count+1]
  echo -e " ${y}Installing package # "$count" ${b}["$name"]${enda} ${endc}" ;
  install $name
done

end_category Bash

###############################################################################

category Accessories

list=(
bitwarden
mintstick
gnome-screenshot
plank
variety
yad
)

count=0

for name in "${list[@]}" ; do
  count=$[count+1]
  echo -e " ${y}Installing package # "$count" ${b}["$name"]${enda} ${endc}" ;
  install $name
done

end_category Accessories

###############################################################################

category Development

list=(
atom
geany
meld
vim
)

count=0

for name in "${list[@]}" ; do
  count=$[count+1]
  echo -e " ${y}Installing package # "$count" ${b}["$name"]${enda} ${endc}" ;
  install $name
done

end_category Development

###############################################################################

category Games

list=(
kmines
supertuxkart
)

count=0

for name in "${list[@]}" ; do
  count=$[count+1]
  echo -e " ${y}Installing package # "$count" ${b}["$name"]${enda} ${endc}" ;
  install $name
done

end_category Games

###############################################################################

category Graphics

list=(
cura	
gnome-font-viewer
gpick
inkscape
nomacs
openscad
prusa-slicer
ristretto
)

count=0

for name in "${list[@]}" ; do
  count=$[count+1]
  echo -e " ${y}Installing package # "$count" ${b}["$name"]${enda} ${endc}" ;
  install $name
done

end_category Graphics

###############################################################################

category Internet

list=(
discord
qbittorrent
telegram-desktop
)

count=0

for name in "${list[@]}" ; do
  count=$[count+1]
  echo -e " ${y}Installing package # "$count" ${b}["$name"]${enda} ${endc}" ;
  install $name
done

end_category Internet

###############################################################################

category Multimedia

list=(
audacity
deadbeef
peek
simplescreenrecorder
)

count=0

for name in "${list[@]}" ; do
  count=$[count+1]
  echo -e " ${y}Installing package # "$count" ${b}["$name"]${enda} ${endc}" ;
  install $name
done

end_category Multimedia

###############################################################################

category Office

list=(
evince
evolution
gnucash
hunspell-en_US
hyphen-en
libmythes
mythes-en
libreoffice-fresh
)

count=0

for name in "${list[@]}" ; do
  count=$[count+1]
  echo -e " ${y}Installing package # "$count" ${b}["$name"]${enda} ${endc}" ;
  install $name
done

end_category Office

###############################################################################

category System

list=(
arc-gtk-theme
arduino
baobab
base-devel
boost
dconf-editor
dmenu
downgrade
font-manager
glances
gnome-disk-utility
go
grsync
hardinfo
hddtemp
kvantum-theme-arc
manjaro-tools
neofetch
net-tools
scrot
simple-scan
sysstat
termite
trizen
vnstat
w3m
wmctrl
unclutter
rxvt-unicode
urxvt-perls
whois
xclip
xdo
xdotool
yay 
zsh-completions
zsh-syntax-highlighting
)

count=0

for name in "${list[@]}" ; do
  count=$[count+1]
  echo -e " ${y}Installing package # "$count" ${b}["$name"]${enda} ${endc}" ;
  install $name
done

end_category System

###############################################################################

category Unpack

list=(
sharutils
uudeview
arj
cabextract
file-roller
)

count=0

for name in "${list[@]}" ; do
  count=$[count+1]
  echo -e " ${y}Installing package # "$count" ${b}["$name"]${enda} ${endc}" ;
  install $name
done

end_category Unpack

###############################################################################

echo -e " [${g}✔${endc}]::Software From ${b}${r}[Manjaro Linux Repository]${endc}${enda} Installed"
echo
echo -e " ${bu}SMD-Manjaro Installation Script Version${b} $version ${enda} ${endc}"
