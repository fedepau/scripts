#!/bin/sh

# my silly way of managing dotfiles when porting my rice to a new installation:
# simply run the script to automatically symlink everything in the dotfiles
# repo to the right location.

echo "Enter username: "
read USER

[[ -f "/home/$USER/.local" ]] || mkdir /home/$USER/.local 2>&1 >/dev/null
[[ -f "/home/$USER/.local/bin" ]] || mkdir /home/$USER/.local/bin 2>&1 >/dev/null
[[ -f "/home/$USER/.local/bin/scripts" ]] || mkdir /home/$USER/.local/bin 2>&1 >/dev/null
[[ -f "/home/$USER/.local/bin/statusbar" ]] || mkdir /home/$USER/.local/bin/statusbar 2>&1 >/dev/null

# statusbar
#for script in /home/$USER/.programs/scripts/statusbar
#do
#    ln -s /home/$USER/.programs/scripts/statusbar/$script /home/$USER/.local/bin/statusbar/$script
#done

# statusbar-minimal
for script in /home/$USER/.programs/scripts/statusbar-minimal
do
    ln -s /home/$USER/.programs/scripts/statusbar-minimal/$script /home/$USER/.local/bin/statusbar/$script
done

ln -s /home/$USER/.programs/scripts/dmenu_run_i /home/$USER/.local/bin/scripts/dmenu_run_i
