FROM python:3.13-slim

# renovate: datasource=pypi depName=gallery-dl
ARG GALLERY_DL_VERSION=1.31.10

RUN pip install uv && \
    uv tool install gallery-dl==${GALLERY_DL_VERSION}

ENV PATH="/root/.local/bin:${PATH}"

ENTRYPOINT ["gallery-dl"]
