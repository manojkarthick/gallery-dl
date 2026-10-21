FROM python:3.15-slim@sha256:f2dbcc4d0a7ff47b0f35724b56f778ccf0460eb119542f15444ab61ddc416435

# renovate: datasource=pypi depName=gallery-dl versioning=pep440
ARG GALLERY_DL_VERSION=1.32.17

RUN pip install uv && \
    uv tool install gallery-dl==${GALLERY_DL_VERSION}

ENV PATH="/root/.local/bin:${PATH}"

ENTRYPOINT ["gallery-dl"]
