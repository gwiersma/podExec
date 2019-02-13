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

Then run podExec

Example:
```
username@ubuntubash:~$ podExec
0       efsddsf-cbf9544f6-vxrnj
1       frjnbghj-0
2       frjnbghj-1
3       frjnbghj-2
4       frjnbghj-ddhh-1550061900-cs9q4
5       frjnbghj-ddhh-1550062800-66ht4
6       frjnbghj-ddhh-1550063700-dsjr6
7       seuvbg-78d6cd6477-cpljt
8       seuvbg-5bc546b87-sc8j7
9       seuvbg-r-785fbb4476-ndf65
10      seuvbg-r-5867dcf67-t7hvq
11      seuvbg-ts-558c77d4db-q7k96
12      seuvbg-85767798f-ckh8h
13      seuvbg-68f5787cc-b8ftq
14      seuvbg-68f5787cc-hh67n
15      seuvbg-68f5787cc-lvsg4
16      seuvbg-68f5787cc-mpz88
17      seuvbg-68f5787cc-q449p
18      seuvbg-68f5787cc-tc5b8
19      seuvbg-58b77656d-2gsw8
20      seuvbg-58b77656d-s9tbk
21      seuvbg-58b77656d-sp8ll
22      seuvbg-d49889fcf-md7b6
23      nginx-k8b8d
24      nginx-n872l
25      nginx-p8jtj
999     cancel
Make a choice: 23
 podExec   connecting to nginx-k8b8d .......
root@nginx-k8b8d:/#
```
