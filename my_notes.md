1. Give permissions to sh file

```
chmod +x notes_sync.sh
```

2. Run sync script (one time)

```
./notes_sync.sh 
```

3. Run script in background

```bash
nohup ./notes_sync.sh &

```
4. To see the logs use this

```
cd /home/dakshgautam/logs
tail -f ~/rclone-sync.log

```

5. Setting up quartz site



