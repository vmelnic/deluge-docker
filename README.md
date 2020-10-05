# Deluge

Deluge is a lightweight, Free Software, cross-platform BitTorrent client. Full Encryption; WebUI;

## docker-compose

Copy ``docker/volumes/config/core.conf.example`` to `docker/volumes/config/core.conf`.

Start the new container: 
```
docker-compose up -d --build
```

Stop the running container: 
```
docker-compose down
```

Delete the container:
```
docker-compose down --remove-orphans
```

## Web interface

The admin interface is available at ``http://<computer ip address or host>:8112`` with a default password `deluge`.

To change the password (recommended) log in to the web interface and go to *Preferences > Interface > Password*.

Change the downloads location in the webui in *Preferences > Downloads* and use /downloads for completed downloads.

## Shared folders

* docker/volumes/config - deluge related configurations;
* docker/volumes/autoload - torrents autoadd location;
* docker/volumes/completed - move completed location;
* docker/volumes/downloads - download location;
* docker/volumes/plugins - deluge plugins location;
* docker/volumes/torrents - torrent files location;

## Links

* https://deluge-torrent.org/
