FROM ghcr.io/omghaxzs/wine-base:latest

COPY AstroServerSettings.ini entrypoint.sh /static/

ENTRYPOINT ["/bin/bash"]
CMD ["/static/entrypoint.sh"]
