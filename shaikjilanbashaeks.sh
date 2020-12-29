AWS EKS

------------------------->

Any OS--Pre request visits

1) Iam Role----------------------->adminaccess(console)
2) Iam Authentication (CLI)------->aws docs
3) AWS CLI------------------------>aws(aws docs)       
4) Kubectl------------------------>kubernates.io(client)
5) EKSctl------------------------->aws docs




kubernates 2nodes capacity(cpu,ram,memory) ----------->kuberates.io



yum install unzip -y

#iam athentication---->https://docs.aws.amazon.com/eks/latest/userguide/install-aws-iam-authenticator.html

curl -o aws-iam-authenticator https://amazon-eks.s3.us-west-2.amazonaws.com/1.18.9/2020-11-02/bin/linux/amd64/aws-iam-authenticator

openssl sha1 -sha256 aws-iam-authenticator

chmod +x ./aws-iam-authenticator


mkdir -p $HOME/bin && cp ./aws-iam-authenticator $HOME/bin/aws-iam-authenticator && export PATH=$PATH:$HOME/bin

echo 'export PATH=$PATH:$HOME/bin' >> ~/.bashrc

aws-iam-authenticator help


#aws cli-------->https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-linux.html

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
aws --version




#kubectl install ------------>https://kubernetes.io/docs/tasks/tools/install-kubectl/

curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"


chmod +x ./kubectl

sudo mv ./kubectl /usr/local/bin/kubectl


kubectl version --client



#eksctl--------------------->https://docs.aws.amazon.com/eks/latest/userguide/getting-started-eksctl.html

curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp


sudo mv /tmp/eksctl /usr/local/bin    #part1


eksctl version


vi eks.sh
#change the permission of script name
chmod 775 eks.sh




eksctl create cluster \
--name prod \
--version 1.18 \
--region ap-southeast-2 \
--nodegroup-name linux-nodes \
--nodes 2 \
--nodes-min 1 \
--nodes-max 3 \
--managed









kubectl get nodes















