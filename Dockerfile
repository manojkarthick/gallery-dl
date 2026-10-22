FROM python:3.15-slim@sha256:490c3463f3766091067a01528e6be3208104eebcca11a306beab5de9672ee893

# renovate: datasource=pypi depName=gallery-dl versioning=pep440
ARG GALLERY_DL_VERSION=1.32.17

RUN pip install uv && \
    uv tool install gallery-dl==${GALLERY_DL_VERSION}

ENV PATH="/root/.local/bin:${PATH}"

ENTRYPOINT ["gallery-dl"]
