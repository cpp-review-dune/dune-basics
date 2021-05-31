#!/usr/bin/bash

set -u -x

echo 'Installing dependencies'
sudo -u aur yay -Syu texlive-latexextra texlive-pictures texlive-science texlive-fontsextra texlive-bibtexextra biber inkscape doxygen python-sphinx ttf-firacode --needed --noconfirm

# http://fpliu-blog.chinacloudsites.cn/it/software/man
echo 'Installing manpages'
sudo -u aur yay -Syu tldr man-pages man-pages-es --needed --noconfirm
#manpages-es manpages-es-extra /usr/bin/vendor_perl

echo 'Installing gmsh API'
# sudo -u aur yay gmsh python-wheel --noconfirm
# python -m venv $HOME/gmsh-env
# source $HOME/gmsh-env/bin/activate
# pip install gmsh
