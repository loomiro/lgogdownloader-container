# Start from the latest Ubuntu base image
FROM ubuntu:latest

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential libcurl4-openssl-dev libboost-regex-dev \
    libjsoncpp-dev librhash-dev libtinyxml2-dev libtidy-dev \
    libboost-system-dev libboost-filesystem-dev libboost-program-options-dev \
    libboost-date-time-dev libboost-iostreams-dev cmake \
    pkg-config zlib1g-dev qtwebengine5-dev ninja-build wget

# Download and extract lgogdownloader
WORKDIR /tmp
RUN wget https://github.com/Sude-/lgogdownloader/releases/download/v3.15/lgogdownloader-3.15.tar.gz -O lgogdownloader-3.15.tar.gz \
    && tar -xvzf lgogdownloader-3.15.tar.gz

# Build lgogdownloader
WORKDIR /tmp/lgogdownloader-3.15/
RUN mkdir build \
    && cd build \
    && cmake .. -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Release -DUSE_QT_GUI=ON \
    && make \
    && make install

# Clean up to reduce the image size
WORKDIR /
RUN rm -rf /tmp/lgogdownloader-3.15

# Set the working directory and create a volume
WORKDIR /gog
VOLUME ["/gog"]

# Set the entrypoint and default command
ENTRYPOINT ["lgogdownloader"]
CMD ["--help"]
