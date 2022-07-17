sudo tc qdisc add dev ens3 root handle 1: prio bands 8
sudo tc qdisc add dev ens3 parent 1:1 handle 10: netem delay 238.0ms rate 0.342Gbit limit 1831410.0000000002
sudo tc qdisc add dev ens3 parent 1:2 handle 20: netem delay 10.0ms rate 2.0Gbit limit 450000.0
sudo tc qdisc add dev ens3 parent 1:3 handle 30: netem delay 136.0ms rate 0.42Gbit limit 1285200.0
sudo tc qdisc add dev ens3 parent 1:4 handle 40: netem delay 76.0ms rate 1.16Gbit limit 1983599.9999999998
sudo tc qdisc add dev ens3 parent 1:5 handle 50: netem delay 12.0ms rate 1.09Gbit limit 294300.0
sudo tc qdisc add dev ens3 parent 1:6 handle 60: netem delay 86.0ms rate 1.05Gbit limit 2031750.0
sudo tc qdisc add dev ens3 parent 1:7 handle 70: netem delay 210.0ms rate 0.366Gbit limit 1729350.0
sudo tc qdisc add dev ens3 parent 1:8 handle 80: netem delay 14.0ms rate 1.14Gbit limit 359099.99999999994
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.36.151/32 flowid 1:1
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.33.20/32 flowid 1:2
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.45.149/32 flowid 1:3
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.44.153/32 flowid 1:4
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.39.155/32 flowid 1:4
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.43.24/32 flowid 1:3
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.37.24/32 flowid 1:5
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.36.30/32 flowid 1:3
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.37.156/32 flowid 1:6
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.33.158/32 flowid 1:3
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.39.224/32 flowid 1:3
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.34.98/32 flowid 1:2
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.41.101/32 flowid 1:4
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.39.98/32 flowid 1:4
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.41.226/32 flowid 1:7
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.36.109/32 flowid 1:7
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.41.109/32 flowid 1:7
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.47.103/32 flowid 1:8
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.33.104/32 flowid 1:8
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.33.113/32 flowid 1:3
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.37.241/32 flowid 1:7
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.46.111/32 flowid 1:3
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.39.112/32 flowid 1:7
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.40.194/32 flowid 1:8
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.43.195/32 flowid 1:3
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.36.116/32 flowid 1:8
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.43.64/32 flowid 1:2
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.32.201/32 flowid 1:3
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.40.74/32 flowid 1:6
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.42.198/32 flowid 1:6
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.33.198/32 flowid 1:7
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.39.219/32 flowid 1:8
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.33.94/32 flowid 1:4
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.47.82/32 flowid 1:6
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.38.216/32 flowid 1:3
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.37.46/32 flowid 1:2
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.33.47/32 flowid 1:5
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.46.165/32 flowid 1:5
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.45.173/32 flowid 1:2
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.37.52/32 flowid 1:4
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.36.181/32 flowid 1:5
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.46.49/32 flowid 1:2
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.43.49/32 flowid 1:2
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.34.185/32 flowid 1:1
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.45.186/32 flowid 1:3
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.40.55/32 flowid 1:6
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.34.55/32 flowid 1:6
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.35.0/32 flowid 1:6
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.41.128/32 flowid 1:7
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.39.59/32 flowid 1:1
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.45.190/32 flowid 1:2
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.34.132/32 flowid 1:4
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.45.6/32 flowid 1:6
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.35.129/32 flowid 1:1
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.42.129/32 flowid 1:8
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.45.9/32 flowid 1:3
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.43.139/32 flowid 1:2
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.42.136/32 flowid 1:2
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.38.136/32 flowid 1:1
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.37.143/32 flowid 1:6
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.46.144/32 flowid 1:2
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.34.13/32 flowid 1:3
sudo tc filter add dev ens3 parent 1:0 protocol ip prio 1 u32 match ip dst 172.31.46.14/32 flowid 1:2
