FROM ubuntu:latest
ADD https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_linux_amd64.zip . 
COPY aws-auth-cm.yaml eks-config.sh ./
RUN apt update && apt install python-pip zip -y && pip install awscli && unzip terraform_0.11.13_linux_amd64.zip -d /bin/ && rm terraform_0.11.13_linux_amd64.zip && curl -o kubectl https://amazon-eks.s3-us-west-2.amazonaws.com/1.12.7/2019-03-27/bin/linux/amd64/kubectl && curl -o aws-iam-authenticator https://amazon-eks.s3-us-west-2.amazonaws.com/1.12.7/2019-03-27/bin/linux/amd64/aws-iam-authenticator
ENTRYPOINT ["bash", "eks-config.sh"]