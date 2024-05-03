FROM ubuntu:jammy

LABEL version="1.0.0"

LABEL com.github.actions.name="CloudFormation Deploy Action Ubuntu Jammy"
LABEL com.github.actions.description="Deploy AWS CloudFormation Stack for Ubuntu Jammy"
LABEL com.github.actions.icon="upload-cloud"
LABEL com.github.actions.color="orange"

LABEL repository="https://github.com/petavue/cloudformation-deploy-action-ubuntu"
LABEL homepage="https://github.com/petavue/cloudformation-deploy-action-ubuntu"
LABEL maintainer="Ijas <ijas@petavue.com>"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y awscli

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
