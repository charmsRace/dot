# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.

alias brc="vim ~/.bashrc"

# Crouton

alias crouton="sudo sh ~/Downloads/crouton"
alias edit-chroot="sudo edit-chroot"
alias enter-chroot="sudo enter-chroot"
alias mount-chroot="sudo mount-chroot"
alias unmount-chroot="sudo unmount-chroot"

alias akasha="sudo startxfce4 -n akasha -X xorg"
alias akasha@cli="sudo enter-chroot -n akasha"
alias akasha@win="sudo startxfce4 -n akasha -X xiwi"
alias akasha@tab="sudo startxfce4 -n akasha -X xiwi-tab"
