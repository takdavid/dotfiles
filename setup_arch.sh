locale-gen 
tzselect 
ln -s /usr/share/zoneinfo/Europe/Budapest /etc/localtime
hwclock --systohc --utc

pacman -S grub 
pacman -S vim
pacman -S iw wpa_supplicant dialog
pacman -S gnome
pacman -S lshw
pacman -S gnome
pacman -S xorg-xinit
pacman -S terminator
pacman -S luakit
pacman -S git

grub-install --target=i386-pc /dev/sda
vi /etc/hostname
umount -R /mnt
grub-install --target=i386-pc /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
useradd -m -G wheel -s /bin/bash takdavid
passwd takdavid
groupadd sudoers
usermod -g sudoers takdavid

sudo mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
systemctl enable mysqld
systemctl start mysqld
mysql_secure_installation
systemctl daemon-reload

git clone https://aur.archlinux.org/package-query.git
cd package-query/
makepkg -si

git clone https://aur.archlinux.org/yaourt.git
cd yaourt
makepkg -si

yaourt -S bluez
yaourt -S bluez-utils
yaourt -S gnome-bluetooth
yaourt -S rfkill
yaourt -S gnome-bluetooth
yaourt -S asus-nb-wmi
yaourt -S acpitool
yaourt -S dosfstools
yaourt -S skype
yaourt -S xinput
yaourt -S pulseaudio-alsa  pulseaudio-bluetooth bluez bluez-libs bluez-utils bluez-firmware
yaourt -S linux-mainline
yaourt -S gnome-extras
yaourt -S openssh
yaourt -S gvim screen python-virtualenv node-npm 
yaourt -S gvim screen python-virtualenv 
yaourt -S nodejs npm 
yaourt -S google-chrome
yaourt -S mariadb 
yaourt -S update-grub
yaourt -S  psmouse-alps-driver
yaourt -S  psmouse-alps-driver
yaourt -S libinput
yaourt -S xf86-input-libinput
yaourt -S acpitool
yaourt -S skpye-desktop-bin
yaourt -S pycharm-community
yaourt -S bower
yaourt -S mc
yaourt -S apulse
yaourt -S cmake
yaourt -S apulse32
yaourt -S apulse-32
yaourt -S lib32-apulse
yaourt -S gcc-multilib lib32-alsa-lib lib32-glib2 lib32-apulse
yaourt -S pulseaudio pulseaudio-bluetooth pulseaudio-dlna pulseaudio-ctl
yaourt -S squirrel-sql
yaourt -S avidemux-gtk gimp 
yaourt -S xkeycaps
yaourt -S xorg-xinput

pulseaudio --status
pulseaudio --start
xinput list-props 
libinput-list-devices 
modprobe btusb
rfkill unblock bluetooth
bluetoothctl devices
bluetoothctl 
modprobe -D asus-nb-wmi
modprobe -D asus-laptop
modprobe hid_multitouch

