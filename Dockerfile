FROM python:3.15-slim@sha256:94d3426f1def7db4a106a232ac121bfd975393e5dfd40a619b955fae45fe7913

# renovate: datasource=pypi depName=gallery-dl versioning=pep440
ARG GALLERY_DL_VERSION=1.32.18

RUN pip install uv && \
    uv tool install gallery-dl==${GALLERY_DL_VERSION}

ENV PATH="/root/.local/bin:${PATH}"

ENTRYPOINT ["gallery-dl"]
