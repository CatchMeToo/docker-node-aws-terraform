FROM node:14.17

ENV AWS_CLI_VERSION 2.2.37

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64-${AWS_CLI_VERSION}.zip" -o "awscliv2.zip" && \
  unzip -qq awscliv2.zip && \
 ./aws/install && \
  rm -rf awscliv2.zip aws

ENV TERRAFORM_VERSION 1.0.6

RUN curl "https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip" -o "terraform.zip" && \
  unzip -qq terraform.zip -d /usr/local/bin && \
  rm -f terraform.zip

ENTRYPOINT ["/bin/bash", "-c"]