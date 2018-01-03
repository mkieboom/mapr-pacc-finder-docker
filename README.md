# mapr-pacc-finder-docker

##### Clone the project
```
git clone https://github.com/mkieboom/mapr-pacc-finder-docker  
cd mapr-pacc-finder-docker  
```

#### Build the Minio PACC container
```
docker build -t mkieboom/mapr-pacc-finder-docker .
```

#### Run the Finder PACC container
```
docker run -it \
--cap-add SYS_ADMIN \
--cap-add SYS_RESOURCE \
--device /dev/fuse \
-e MAPR_CLUSTER=demo.mapr.com \
-e MAPR_CLDB_HOSTS=MAPRN01 \
-e MAPR_CONTAINER_USER=mapr \
-e MAPR_CONTAINER_GROUP=mapr \
-e MAPR_CONTAINER_UID=5000 \
-e MAPR_CONTAINER_GID=5000 \
-e MAPR_MOUNT_PATH=/mapr \
-p 8080:80 \
mkieboom/mapr-pacc-finder-docker
```

#### Run the Minio PACC container as a deamon
```
docker run -d \
--name minio \
--cap-add SYS_ADMIN \
--cap-add SYS_RESOURCE \
--device /dev/fuse \
-e MAPR_CLUSTER=demo.mapr.com \
-e MAPR_CLDB_HOSTS=MAPRN01 \
-e MAPR_CONTAINER_USER=mapr \
-e MAPR_CONTAINER_GROUP=mapr \
-e MAPR_CONTAINER_UID=5000 \
-e MAPR_CONTAINER_GID=5000 \
-e MAPR_MOUNT_PATH=/mapr \
-p 8080:80 \
mkieboom/mapr-pacc-finder-docker
```

#### Connect to the Finder webUI
```
Open your browser and point to http://localhost:8080
```
