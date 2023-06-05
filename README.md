 
### Assume ipv6 support and daemon.json set correctly.
`nano /etc/docker/daemon.json`

```json
{
"ipv6": true,
"fixed-cidr-v6": "fc0c::/64"
}
```

```bash
docker network create --attachable --driver overlay --ipv6 --subnet 2001:470:1f08:27::/64 --opt encrypted app_net
 ```