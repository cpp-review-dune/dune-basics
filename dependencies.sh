#!/usr/bin/bash

set -u -x

echo 'Installing dependencies'
yay -Syu texlive-latexextra texlive-pictures texlive-science texlive-fontsextra texlive-bibtexextra biber inkscape doxygen python-sphinx ttf-fira-code fmt --needed --noconfirm
echo 'export PATH="/usr/bin/vendor_perl:$PATH"' >>~/.bashrc
echo 'alias man="man -Les"' >>~/.bashrc
# http://fpliu-blog.chinacloudsites.cn/it/software/man
echo 'Installing manpages'
yay -Syu tldr man-pages man-pages-es --needed --noconfirm

echo 'Installing gmsh API'
# sudo -u aur yay gmsh python-wheel --noconfirm
# python -m venv $HOME/gmsh-env
# source $HOME/gmsh-env/bin/activate
# pip install gmsh

echo 'Installing manpages'

yay -Syu boost --needed --noconfirm
echo 'Actualizando perfiles'
source ~/.bashrc