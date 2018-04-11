FROM ubuntu

MAINTAINER Louis Soussand <lsoussan@bidmc.harvard.edu>

# Set up U
RUN apt-get update \
&& apt-get install -y git software-properties-common octave octave-pkg-dev \
&& apt-get remove -y software-properties-common \
&& rm -rf /var/lib/apt

# Clone PALM from github and compile fileio content:
RUN git clone https://github.com/andersonwinkler/PALM.git \
&& cd /PALM/fileio/@file_array/private \
&& ./compile.sh

# Set entrypoint:
ENTRYPOINT ["/PALM/palm"]
