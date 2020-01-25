ARG BASEIMAGE=[BASENAME]
FROM ${BASEIMAGE}

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL mantainer="[MANTAINER]" \
    org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.name="[SNAME]" \
    org.label-schema.description="[SNAME] is a general purpose tool" \
    org.label-schema.url="[MYURL]/[SNAME]" \
    org.label-schema.vcs-ref=$VCS_REF \
    org.label-schema.vcs-url="https://github.com/[AUTHOR]/[SNAME]" \
    org.label-schema.vendor="[VENDOR]" \
    org.label-schema.version=$VERSION \
    org.label-schema.schema-version="1.0"

RUN apk add --no-cache [SNAME]
WORKDIR /data
ENTRYPOINT ["[SNAME]"]
