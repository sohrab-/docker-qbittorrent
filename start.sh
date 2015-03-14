#!/bin/bash

if [ ! -f /root/.config/qBittorrent/qBittorrent.conf ] ; then
	cp /build/qBittorrent.conf /root/.config/qBittorrent/qBittorrent.conf
fi

echo "Starting qbittorrent..."
exec qbittorrent-nox