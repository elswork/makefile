ARG BASEIMAGE=[BASENAME]
FROM ${BASEIMAGE}

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL mantainer="[MANTAINER]" \
    org.opencontainers.image.title="[SNAME]" \
    org.opencontainers.image.description="[SNAME] is a general purpose tool" \
    org.opencontainers.image.vendor="[VENDOR]" \
    org.opencontainers.image.url="[MYURL]/[SNAME]" \
    org.opencontainers.image.source="https://github.com/[USERNAME]/[SNAME]" \
    org.opencontainers.image.version=$VERSION \ 
    org.opencontainers.image.created=$BUILD_DATE \
    org.opencontainers.image.revision=$VCS_REF \
    org.opencontainers.image.licenses=MIT

RUN apk add --no-cache [SNAME]
WORKDIR /data
ENTRYPOINT ["[SNAME]"]
