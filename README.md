```bash
docker build -t lgogdownloader .
```

```yaml
docker run --rm -it \
  -v /srv/data/lgogdownloader/:/root/.config/lgogdownloader \
  -v gog-games:/mnt \
  ghcr.io/loomiro/lgogdownloader:latest \
  --directory /mnt \
  --login
```

```yaml
docker run --rm -it \
  -v /srv/data/lgogdownloader/:/root/.config/lgogdownloader \
  -v gog-games:/mnt \
  ghcr.io/loomiro/lgogdownloader:latest \
  --directory /mnt \
  --download
```
