FROM alpine:latest
ADD https://github.com/bitly/oauth2_proxy/releases/download/v2.2/oauth2_proxy-2.2.0.linux-amd64.go1.8.1.tar.gz oauth2_proxy-2.2.0.linux-amd64.go1.8.1.tar.gz
RUN tar -zxvf oauth2_proxy-2.2.0.linux-amd64.go1.8.1.tar.gz

FROM scratch
COPY --from=0 oauth2_proxy-2.2.0.linux-amd64.go1.8.1/oauth2_proxy /
ENTRYPOINT ["/oauth2_proxy"]
