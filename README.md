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
clab destroy --topo project.yml
```
4. show project graph
```
sudo containerlab graph --topo project.yml
```
5. test PC to router
```
sudo ./ping.sh
```
6.  test and log router to router 
```
sudo ./logging.sh
```