
docker stop S5node
docker rm S5node -f

rm -R /opt/docker/S5node_ubuntu/devs
rm -R /opt/docker/S5node_ubuntu/S5
rm /opt/docker/S5node_ubuntu/default_config_extra.toml

mkdir -p /opt/docker/S5node_ubuntu/S5
sleep 2
cd ubuntu2204_64
cp setup_s5.sh /opt/docker/S5node_ubuntu/s5
cp s5node.service /opt/docker/S5node_ubuntu/s5
cp default_config_extra.toml /opt/docker/S5node_ubuntu/s5
cd ..

docker run --name S5node --hostname S5node -p 4444:4444 -p 5522:5522 -p 8989:8989 -d -v /opt/docker/S5node_ubuntu/s5:/app -v /opt/docker/S5node_ubuntu/devs/S5:/root/devs/S5 -v /sys/fs/cgroup:/sys/fs/cgroup:ro -it --privileged --restart always jrei/systemd-ubuntu:22.04
sleep 8

docker exec -it s5node bash -c /app/setup_s5.sh

