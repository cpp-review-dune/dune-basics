#!/usr/bin/bash

set -u -x

sudo -u aur yay -Syu texlive-latexextra texlive-pictures texlive-science texlive-fontsextra texlive-bibtexextra biber inkscape doxygen python-sphinx ttf-firacode --needed --noconfirm

# http://fpliu-blog.chinacloudsites.cn/it/software/man
sudo -u aur yay -Syu tldr man-pages manpages-es --needed --noconfirm

# sudo -u aur yay gmsh python-wheel --noconfirm
# python -m venv $HOME/gmsh-env
# source $HOME/gmsh-env/bin/activate
# pip install gmsh