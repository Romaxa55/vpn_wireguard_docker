 
### Assume ipv6 support and daemon.json set correctly.
`nano /etc/docker/daemon.json`

```json
{
  "ipv6": true,
  "fixed-cidr-v6": "2001:db8:1::/64",
  "experimental": true,
  "ip6tables": true
}
```

```bash
docker network create --ipv6 --subnet 2001:0DB8::/112  --attachable ip6net
docker network create -d overlay --ipv6 --subnet=2001:0DB8::/112 --attachable ip6net
./scripts/run_vpn.sh
 ```