sudo tc qdisc add dev ens3 root handle 1: prio bands 3
sudo tc qdisc add dev ens3 parent 1:1 handle 10: netem delay 5.0ms rate 5.0Gbit limit 562500.0
sudo tc qdisc add dev ens3 parent 1:2 handle 20: netem delay 1.0ms rate 5.0Gbit limit 112500.0
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip src 172.31.26.150/32 flowid 1:1
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip src 172.31.22.73/32 flowid 1:2
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip src 172.31.27.129/32 flowid 1:2
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip src 172.31.20.130/32 flowid 1:2
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip src 172.31.22.50/32 flowid 1:2
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip src 172.31.22.4/32 flowid 1:2
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip src 172.31.23.80/32 flowid 1:2
