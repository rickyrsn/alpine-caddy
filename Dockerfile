FROM alpine:latest
RUN apk update

# System dependencies
RUN apk update && \
    apk add --no-cache libc6-compat curl net-tools wget util-linux gcc bash
RUN curl https://getcaddy.com | bash -s personal dyndns,http.authz,http.awses,http.awslambda,http.cache,http.cgi,http.cors,http.expires,http.filebrowser,http.filter,http.forwardproxy,http.geoip,http.git,http.gopkg,http.grpc,http.ipfilter,http.jwt,http.locale,http.login,http.minify,http.nobots,http.proxyprotocol,http.ratelimit,http.realip,http.reauth,http.s3browser,http.supervisor,http.upload
