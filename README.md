# podExec
List k8s pods and access bash from a numbered list

Before using podExec make sure you have configured kubectl
```
$ sudo apt-get update && sudo apt-get install -y apt-transport-https
$ curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
$ echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
$ sudo apt-get update
$ sudo apt-get install -y kubectl
$ mkdir ~/.kube
$ nano ~/.kube/config #add the content to connnect to your k8s cluster
```

Add podExec to /usr/bin/
dont forget to chmod +x

# Usage
$ podExec

If you want to use `/bin/sh` instead of `/bin/bash` use:

$ podExec sh

# Example
```
username@ubuntubash:~$ podExec
0       app-9bs789andh8-dsjr6
1       app-9bs789andh8-fdjry
2       app-9bs789andh8-66hh4
3       app-9bs789andh8-trsjr
4       elastic-68f5787cc-b8ftq
5       elastic-68f5787cc-hh67n
6       elastic-68f5787cc-lvsg4
7       elastic-68f5787cc-mpz88
8       elastic-68f5787cc-q449p
9       elastic-68f5787cc-tc5b8
10      fpm-58b77656d-2gsw8
11      fpm-58b77656d-s9tbk
12      fpm-58b77656d-sp8ll
13      fpm-d49889fcf-md7b6
14      haproxy-h72fbshs-lvsg4
15      haproxy-h72fbshs-mpz88
16      haproxy-h72fbshs-q449p
17      mysql-ic1-1550062800-01ht4
18      mysql-ic1-1550063700-dsjr6
19      mysql-ic1-1550063700-fdjry
20      mysql-ic2-1331g54hwq-66hh4
21      mysql-ic2-1331g54hwq-trsjr
22      mysql-ic2-1331g54hwq-dfa47
23      nginx-k8b8d
24      nginx-n872l
25      nginx-p8jtj
999     cancel
Make a choice: 23
 podExec   connecting to nginx-k8b8d .......
root@nginx-k8b8d:/#
```
