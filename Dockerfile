FROM python:3.14-slim@sha256:fb83750094b46fd6b8adaa80f66e2302ecbe45d513f6cece637a841e1025b4ca

# renovate: datasource=pypi depName=gallery-dl versioning=pep440
ARG GALLERY_DL_VERSION=1.31.10

RUN pip install uv && \
    uv tool install gallery-dl==${GALLERY_DL_VERSION}

ENV PATH="/root/.local/bin:${PATH}"

ENTRYPOINT ["gallery-dl"]
