FROM ztj1993/webproc as webproc

FROM mobtitude/vpn-pptp:1.0.4

LABEL maintainer="Ztj <ztj1993@gmail.com>"

COPY webproc.toml /srv/webproc.toml
COPY --from=webproc /bin/webproc /bin/webproc

WORKDIR /srv

CMD ["/bin/webproc", "/srv/webproc.toml"]
