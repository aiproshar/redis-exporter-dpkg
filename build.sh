#!/bin/sh

echo "starting deb build process"
dpkg-deb --build ./redis-exporter-amd64-1.15.1
echo "installing debian package"
dpkg -i redis-exporter-amd64-1.15.1.deb

systemclt enable redis-exporter
systemctl start redis-exporter

rm -rf ./
