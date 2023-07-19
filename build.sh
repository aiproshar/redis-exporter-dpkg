#!/bin/sh

echo "starting deb build process"
dpkg-deb --build ./redis-exporter-amd64-1.15.1
echo "installing debian package"
dpkg -i redis-exporter-amd64-1.15.1.deb

systemctl enable redis-exporter
