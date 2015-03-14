# QBittorrent Docker Image

[Docker](https://www.docker.com/) image for [QBittorrent](http://www.qbittorrent.org/).

Run using this command

	docker run -itd \
		-p 8080:8080 \
		-v /data/qbittorrent/config:/root/.config/qBittorrent \
		-v /data/qbittorrent/torrents:/root/.local/share/data/qBittorrent \
		-v /data/qbittorrent/downloads:/root/Downloads \
		sohrab/qbittorrent

To have webUI running on [http://localhost:8080](http://localhost:8080) (username: admin, password: adminadmin) with config in the following locations mounted:

* `/data/qbittorrent/config`: QBittorrent configuration files
* `/data/qbittorrent/torrents`: Torrent files
* `/data/qbittorrent/downloads`: Download location

It is probably a good idea to add `--restart=always` so the container restarts if it goes down.

_Note: For the container to run, the legal notice had to be automatically accepted. By running the container, you are accepting its terms. Toggle the flag in `qBittorrent.conf` to display the notice again._
