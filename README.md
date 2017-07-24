# ssh-rabbit
ssh hosts manager
ssh rabbit is a sample shell script for management ssh connections.
## Quick start

``` sh
$ chmod +x ssh-rabbit.sh 
$ echo 'ssh_username|172.16.1.2|host description' > ./host
```
you can write other host infomations to other line.
``` sh
$ alpha:ecsc$ ./server 
total=  20
 1) host1=>host description
 2) host2=>host2
```
you can choose one host numer to connect your linux server.
