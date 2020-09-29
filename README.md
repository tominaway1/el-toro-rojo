# el-toro-rojo


aws ec2 create-key-pair --key-name EKSKeyPair --query 'KeyMaterial' --output text > EKSKeyPair.pem
eksctl create cluster \
--name el-toro-rojo \
--version 1.17 \
--region us-west-2 \
--nodegroup-name linux-nodes \
--nodes 3 \
--nodes-min 1 \
--nodes-max 4 \
--ssh-access \
--ssh-public-key EKSKeyPair \
--managed




docker build -t eltororojo-devo .
docker tag eltororojo-devo:latest 611061137602.dkr.ecr.us-west-2.amazonaws.com/development:eltororojo-devo
docker push 611061137602.dkr.ecr.us-west-2.amazonaws.com/development:eltororojo-devo


https://docs.aws.amazon.com/eks/latest/userguide/dashboard-tutorial.html

