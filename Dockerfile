FROM datajoint/jupyter

LABEL maintainer="Stelios Papadopoulos <spapadop@bcm.edu>"

# Upgrade setuptools
# RUN pip3 install --upgrade setuptools 

# Install directory
ADD . /src/djslack
RUN pip3 install -e /src/djslack

# Clean apt lists
#RUN ap-get install -y .... &&\
#    rm -rf /var/lib/apt/lists/*

