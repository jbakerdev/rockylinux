ARG BASE=8
FROM rockylinux:${BASE}
LABEL name="jbakerdev/rockylinux${BASE}" \
      description="Rocky Linux ${BASE}"

# Update and install packages
RUN dnf update -y \
    && dnf install -y --allowerasing --setopt=tsflags=nodocs \
        curl \
        gcc \
        gcc-c++ \
        git \
        make \
    && dnf clean all

# Set default command
CMD ["/usr/bin/bash"]
