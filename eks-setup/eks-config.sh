chmod +x ./aws-iam-authenticator 
chmod +x ./kubectl
mkdir -p $HOME/bin && mv ./kubectl $HOME/bin/kubectl && mv ./aws-iam-authenticator $HOME/bin/aws-iam-authenticator
export PATH=$HOME/bin:$PATH
aws eks --region REGION update-kubeconfig --name EKS_CLUSTER_NAME
kubectl apply -f aws-auth-cm.yaml