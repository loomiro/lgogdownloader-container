```bash
docker build -t lgogdownloader .
```

```yaml
docker run --rm -it \
  -v /conf/lgogdownloader:/root/.config/lgogdownloader \
  -v gog-games:/mnt \
  ghcr.io/loomiro/lgogdownloader:latest \
  --directory /mnt \
  --login
```

```yaml
docker run --rm -it \
  -v /conf/lgogdownloader:/root/.config/lgogdownloader \
  -v gog-games:/mnt \
  ghcr.io/loomiro/lgogdownloader:latest \
  --directory /mnt \
  --download
```
