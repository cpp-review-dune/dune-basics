FROM gitpod/workspace-full
USER root
ARG APT_PACKAGES="\
    neofetch\
    "
RUN \
    set -ex; \
    install-packages ${APT_PACKAGES}
