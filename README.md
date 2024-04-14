# commands
1. start docker
```
sudo systemctl start docker
```
2. start demo
 ```
sudo ./run.sh 
```
3. stop demo
```
clab destroy --topo demo.yml
```
4. show demo graph
```
sudo containerlab graph --topo demo.yml
```
5. test PC to router
```
sudo ./ping.sh
```
6.  test and log router to router 
```
sudo ./logging
```