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
nano ~/.kube/config #add the content to connnect to your k8s cluster
```

Add podExec to /usr/bin/
dont forget to chmod +x

# Usage
$ podExec

If you want to use `/bin/sh` instead of `/bin/bash` use:

$ podExec sh

$Example
```
username@ubuntubash:~$ podExec
0       app-cbf9544f6-vxrnj
1       haproxy-0
2       haproxy-1
3       haproxy-2
4       mysql-ic1-1550061900-cs9q4
5       mysql-ic1-1550062800-66ht4
6       mysql-ic1-1550063700-dsjr6
7       fpm-78d6cd6477-cpljt
8       fpm-5bc546b87-sc8j7
9       fpm-r-785fbb4476-ndf65
10      fpm-r-5867dcf67-t7hvq
11      elk-ts-558c77d4db-q7k96
12      elk-85767798f-ckh8h
13      elastic-68f5787cc-b8ftq
14      elastic-68f5787cc-hh67n
15      elastic-68f5787cc-lvsg4
16      elastic-68f5787cc-mpz88
17      elastic-68f5787cc-q449p
18      elastic-68f5787cc-tc5b8
19      elastic-58b77656d-2gsw8
20      elastic-58b77656d-s9tbk
21      elastic-58b77656d-sp8ll
22      elastic-d49889fcf-md7b6
23      nginx-k8b8d
24      nginx-n872l
25      nginx-p8jtj
999     cancel
Make a choice: 23
 podExec   connecting to nginx-k8b8d .......
root@nginx-k8b8d:/#
```
