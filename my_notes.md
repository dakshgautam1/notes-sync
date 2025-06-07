- Install rclone 

```
sudo -v ; curl https://rclone.org/install.sh | sudo bash

```

- Go to google drive app services
- Create `Create OAuth client ID`. 
 
- Give permissions to sh file

```
chmod +x notes_sync.sh
```

- Run sync script (one time)

```
./notes_sync.sh 
```

- Run script in background

```bash
nohup ./notes_sync.sh &

```
- To see the logs use this

```
cd /home/dakshgautam/logs
tail -f /home/dakshgautam/logs/rclone-sync.log

```

- Setting up quartz site

- removing the `content` folder
- sym linking the folder 
```
ln -s /home/dakshgautam/Documents/dg_notes/dg_obsidian content
```


