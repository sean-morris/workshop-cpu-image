ARG PANGEO_BASE_IMAGE_TAG=2026.01.30
FROM pangeo/pangeo-notebook:${PANGEO_BASE_IMAGE_TAG}


COPY environment.yml /tmp/environment.yml
RUN mamba env update -f /tmp/environment.yml --name notebook && \
    mamba clean --all -f -y
