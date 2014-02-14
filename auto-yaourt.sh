echo "This will attempt to install Yaourt completely automatically!"
echo "Note: You will need to have wget and sudo installed, "
echo "and you must be a member of the group wheel!"
echo
echo "Press enter to continue..."

read a

mkdir /tmp/auto-yaourt
cd /tmp/auto-yaourt
mkdir p
mkdir y

cd p
wget https://aur.archlinux.org/packages/pa/package-query/PKGBUILD
makepkg -is

cd ../y
wget https://aur.archlinux.org/packages/ya/yaourt/PKGBUILD
makepkg -is


echo "That probably worked!"
