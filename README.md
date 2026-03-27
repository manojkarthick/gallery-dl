# gallery-dl

Docker image for [gallery-dl](https://github.com/mikf/gallery-dl), a command-line program to download image galleries and collections from several image hosting sites.

## Usage

### Pull from GHCR

```bash
docker pull ghcr.io/manojkarthick/gallery-dl:latest
```

### Run

```bash
docker run --rm -v "$PWD/downloads:/downloads" ghcr.io/manojkarthick/gallery-dl <URL>
```

### Build locally

```bash
docker build -t gallery-dl .
```

To use a specific `gallery-dl` version:

```bash
docker build --build-arg GALLERY_DL_VERSION=1.31.10 -t gallery-dl .
```

### Configuration

Mount a [gallery-dl config file](https://github.com/mikf/gallery-dl#configuration) into the container:

```bash
docker run --rm \
  -v "$PWD/downloads:/downloads" \
  -v "$PWD/gallery-dl.conf:/etc/gallery-dl.conf:ro" \
  ghcr.io/manojkarthick/gallery-dl <URL>
```

## License

See [LICENSE](LICENSE) for details.
