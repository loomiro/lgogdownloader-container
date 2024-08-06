```bash
docker build -t lgogdownloader .
```

```yaml
docker run --rm -it \
  -v /conf/lgogdownloader:/root/.config/lgogdownloader \
  -v gog-games:/mnt \
  lgogdownloader \
  --directory /mnt \
  --login
```

```yaml
docker run --rm -it \
  -v /conf/lgogdownloader:/root/.config/lgogdownloader \
  -v gog-games:/mnt \
  lgogdownloader \
  --directory /mnt \
  --download
```
