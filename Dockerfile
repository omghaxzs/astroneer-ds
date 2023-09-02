FROM ghcr.io/omghaxzs/wine-base:latest

LABEL org.opencontainers.image.source=https://github.com/omghaxzs/astroneer-ds

COPY Engine.ini AstroServerSettings.ini entrypoint.sh /static/

ENTRYPOINT ["/bin/bash"]
CMD ["/static/entrypoint.sh"]
