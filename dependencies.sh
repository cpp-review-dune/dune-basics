#!/usr/bin/bash

set -u -x

echo 'Installing dependencies'
sudo -u aur yay -Syu texlive-latexextra texlive-pictures texlive-science texlive-fontsextra texlive-bibtexextra biber inkscape doxygen python-sphinx ttf-fira-code fmt --needed --noconfirm
sudo -u aur echo 'export PATH="/usr/bin/vendor_perl:$PATH"' >> /home/gitpod/.bashrc
sudo -u aur echo 'alias man="man -Les"' >> /home/gitpod/.bashrc
# http://fpliu-blog.chinacloudsites.cn/it/software/man
echo 'Installing manpages'
sudo -u aur yay -Syu tldr man-pages man-pages-es --needed --noconfirm
#manpages-es manpages-es-extra

echo 'Installing gmsh API'
# sudo -u aur yay gmsh python-wheel --noconfirm
# python -m venv $HOME/gmsh-env
# source $HOME/gmsh-env/bin/activate
# pip install gmsh

echo 'Installing manpages'

sudo -u aur yay -Syu boost --needed --noconfirm
echo 'Actualizando perfiles'
source ~/.bashrc