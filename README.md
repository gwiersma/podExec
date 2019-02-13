# podExec
List k8s pods and access bash from a numbered list

Before using podExec make sure you have configured kubectl
```
sudo apt-get update && sudo apt-get install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl
mkdir ~/.kube
nano ~/.kube/config #add the content to connnect to youre k8s cluster
```

Add podExec.sh to /usr/bin/
dont forget to chmod +x

Then run podExec.sh

Example:
