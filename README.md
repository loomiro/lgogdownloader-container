```bash
docker build -t lgogdownloader .
```

```yaml
docker run --rm -it \
  -v /srv/data/lgogdownloader/:/root/.config/lgogdownloader \
  -v gog-games:/mnt \
  ghcr.io/loomiro/lgogdownloader:3.15 \
  --directory /mnt \
  --login
```

```yaml
docker run --rm -it \
  -v /srv/data/lgogdownloader/:/root/.config/lgogdownloader \
  -v gog-games:/mnt \
  ghcr.io/loomiro/lgogdownloader:3.15 \
  --directory /mnt \
  --download
```
