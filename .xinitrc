#!/bin/sh

[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.profile ] && . ~/.profile
[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources
