FROM python:3.9.1-buster
LABEL description="Published as citihub/py3-neomodel:latest on Docker Hub"
RUN pip install neomodel

# Add the docker image tests
COPY .docker_image_tests/ /.docker_image_tests/

# install kubectl so that we can dynamically get the bolt service IP address
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl \
  && chmod +x ./kubectl \
  && mv ./kubectl /usr/local/bin/
