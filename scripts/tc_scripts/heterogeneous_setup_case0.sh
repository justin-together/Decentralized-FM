sudo tc qdisc add dev ens3 root handle 1: prio
sudo tc qdisc add dev ens3 parent 1:2 handle 10: netem delay 0.0ms rate 100.0Gbit limit 0.0
sudo tc qdisc add dev ens3 parent 1:3 handle 10: netem delay 0.0ms rate 100.0Gbit limit 0.0
sudo tc qdisc add dev ens3 parent 1:4 handle 10: netem delay 0.0ms rate 100.0Gbit limit 0.0
sudo tc qdisc add dev ens3 parent 1:5 handle 10: netem delay 0.0ms rate 25.0Gbit limit 0.0
sudo tc qdisc add dev ens3 parent 1:6 handle 10: netem delay 0.0ms rate 25.0Gbit limit 0.0
sudo tc qdisc add dev ens3 parent 1:7 handle 10: netem delay 0.0ms rate 25.0Gbit limit 0.0
sudo tc qdisc add dev ens3 parent 1:8 handle 10: netem delay 0.0ms rate 25.0Gbit limit 0.0
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip src 172.31.8.102/32 flowid 1:2
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip src 172.31.8.103/32 flowid 1:3
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip src 172.31.8.104/32 flowid 1:4
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip src 172.31.8.105/32 flowid 1:5
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip src 172.31.8.106/32 flowid 1:6
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip src 172.31.8.107/32 flowid 1:7
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip src 172.31.8.108/32 flowid 1:8
