chmod +x ./aws-iam-authenticator 
chmod +x ./kubectl
mkdir -p $HOME/bin && mv ./kubectl $HOME/bin/kubectl && mv ./aws-iam-authenticator $HOME/bin/aws-iam-authenticator
export PATH=$HOME/bin:$PATH
aws eks --region us-east-1 update-kubeconfig --name nike-eks
kubectl apply -f aws-auth-cm.yaml