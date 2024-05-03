# Pre-requisites [Taken from Containerlab](https://containerlab.dev/install/)

The following requirements must be satisfied to let containerlab tool run successfully:

    A user should have sudo privileges to run containerlab.
    A Linux server/VM2 and Docker installed.
    Load container images (e.g. Nokia SR Linux, Arista cEOS) that are not downloadable from a container registry. Containerlab will try to pull images at runtime if they do not exist locally.

***********************************************************************************************************

# docker issues with linux on vm

1. you may not have it installed on your linux vm of choose this is one for debian but look it up as its easy to find [installing curl on debian](https://www.cyberciti.biz/faq/howto-install-curl-command-on-debian-linux-using-apt-get/)

2. Curl (6) error or dowload.docker not working. follow this tutarial and it hopefuly should fix the issues [ltheme curl 6 fix](https://ltheme.com/curl-6-could-not-resolve-host/)

3. **Big issue** podman will have to be unistalled for alot of people to get docker working. IBM has instutions on how to [IBM remove podman](https://www.ibm.com/docs/en/edge-computing/4.2?topic=questions-troubleshooting-tips#uninstall_podman)


***********************************************************************************************************

# commands
1. start docker
```
sudo systemctl start docker
```
2. start project
 ```
sudo ./run.sh 
```
3. stop project
```
sudo ./stop.sh
```
4. show project graph
```
sudo containerlab graph --topo project.yml
```
5.  run menu
```
sudo ./menu.sh
```
6. test PC to router
```
sudo ./ping.sh
```
7.  test and log router to router 
```
sudo ./logging.sh
```
8.  test traceroute
```
sudo ./trace.sh
```
9.  test fault injection
```
sudo ./fault.sh
```