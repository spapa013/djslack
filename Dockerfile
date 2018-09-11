FROM ubuntu:18.04

LABEL maintainer="Stelios Papadopoulos <spapadop@bcm.edu>"

# Default inputs
ARG DEBIAN_FRONTEND=noninteractive

WORKDIR /src

# Install Python 3
RUN apt-get update && \
    apt-get install -y python3-dev python3-pip python3-tk && \
    pip3 install numpy scipy matplotlib jupyterlab pandas seaborn && \
    
# Install directory
ADD ./setup.py /src/docker-practice/setup.py
ADD ./docker-practice /src/docker-practice/docker-practice
RUN pip3 install -e /src/docker-practice

# Clean apt lists
RUN rm -rf /var/lib/apt/lists/*

# Configure and run jupyter lab
RUN mkdir -p /scripts
ADD ./jupyter/run_jupyter.sh /scripts/
ADD ./jupyter/jupyter_notebook_config.py /root/.jupyter/
ADD ./jupyter/custom.css /root/.jupyter/custom/
RUN chmod -R a+x /scripts
ENTRYPOINT ["/scripts/run_jupyter.sh"]
