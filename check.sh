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
version="20200322"

function install {
  # Check If Package Is Installed
  if pacman -Qi $1 &> /dev/null; then
      echo -e " [${g}✔${endc}]::[${b}"$1"${enda}] Is Already Installed!"
  else
      echo -e " [${r}!${endc}]::[${b}"$1"${enda}]: ${r}NOT Installed!${endc}"
  fi
}

list=(
#Bash
asciiquarium
cmatrix
cool-retro-term
cowfortune
fortune-mod
mc
ranger
sl
#Accessories
bitwarden
mintstick
gnome-screenshot
plank
variety
yad
#Development
atom
#Start manjaro-tools Group
manjaro-tools-base
manjaro-tools-base-git
manjaro-tools-iso
manjaro-tools-iso-git
manjaro-tools-pkg
manjaro-tools-pkg-git
manjaro-tools-yaml
manjaro-tools-yaml-git
#end manjaro-tools Group
geany
meld
vim
#Games
kmines
supertuxkart
#Graphics
cura	
gnome-font-viewer
gpick
inkscape
nomacs
openscad
prusa-slicer
ristretto
#Internet
discord
qbittorrent
telegram-desktop
#Multimedia
audacity
deadbeef
peek
simplescreenrecorder
#Office
evince
evolution
gnucash
hunspell-en_US
hyphen-en
libmythes
mythes-en
libreoffice-fresh
#System
arc-gtk-theme
arduino
baobab
#base-devel Group Start
autoconf
automake
binutils
bison
fakeroot
file
findutils
flex 
gawk
gcc 
gettext
grep
groff
gzip
libtool
m4
make
pacman
patch 
pkgconf
sed 
sudo
texinfo 
which
#base-devel Group End
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
#Unpack
sharutils
uudeview
arj
cabextract
file-roller
#Start AUR
#Distro Specific
xfce4-panel-profiles
#Accessories
conky-lua-archers
#Development
sublime-text-dev
#Fun Stuff
bash-pipes
boxes
gotop-bin
hollywood
#Graphics
slic3r
#Multimedia
gradio
pithos
#Office
joplin
#System
bibata-cursor-theme
kvantum-theme-arc
numix-circle-icon-theme
oxy-neon
sardi-icons
sardi-orb-colora-variations-icons
sardi-orb-colora-mixing-icons
sardi-mono-papirus-colora-variations-icons
sardi-mono-numix-colora-variations-icons
sardi-mono-mixing-icons
sardi-mono-colora-variations-icons
sardi-mixing-icons
sardi-ghost-flexible-variations-icons
sardi-ghost-flexible-mixing-icons
sardi-ghost-flexible-colora-variations-icons
sardi-flexible-variations-icons
sardi-flexible-mixing-icons
sardi-flexible-luv-colora-variations-icons
sardi-flexible-colora-variations-icons
sardi-flat-mixing-icons
sardi-flat-colora-variations-icons
sardi-colora-variations-icons
surfn-icons
the_platinum_searcher-bin
ttf-mac-fonts
hardcode-fixer
#004 Fonts
awesome-terminal-fonts
adobe-source-sans-pro-fonts
ttf-bitstream-vera
ttf-font-awesome
ttf-hack
ttf-roboto
ttf-ubuntu-font-family
tamsyn-font
)

count=0

for name in "${list[@]}" ; do
  count=$[count+1]
  install $name
done
