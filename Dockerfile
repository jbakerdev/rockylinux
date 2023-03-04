FROM rockylinux:8
LABEL name="jbakerdev/rockylinux:8" \
      description="jbakerdev Rocky Linux 8"

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
