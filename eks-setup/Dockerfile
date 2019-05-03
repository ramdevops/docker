FROM ubuntu:latest
ADD https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_linux_amd64.zip . 
COPY aws-auth-cm.yaml aws-iam-authenticator eks-config.sh kubectl ./
RUN apt update && apt install python-pip zip -y && pip install awscli && unzip terraform_0.11.13_linux_amd64.zip -d /bin/ && rm terraform_0.11.13_linux_amd64.zip 
#ENTRYPOINT ["bash", "eks-config.sh"]