FROM gitpod/workspace-full-vnc:latest

# install updates
RUN sudo DEBIAN_FRONTEND=noninteractive apt-get update

# Install Electron dependencies
RUN sudo DEBIAN_FRONTEND=noninteractive apt-get install -y \
        libgtk-3-0 \
        libnss3 \
        libasound2 \
        libgbm1

# Install AppImage dependencies
RUN sudo DEBIAN_FRONTEND=noninteractive apt-get install -y \
        fuse \
        libfuse2


# Install nodeJs
RUN bash -c ". .nvm/nvm.sh \
    && nvm install 18.16.0 \
    && nvm use 18.16.0 \
    && nvm alias default 18.16.0"

RUN echo "nvm use default &>/dev/null" >> ~/.bashrc.d/51-nvm-fix