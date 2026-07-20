FROM lacledeslan/gamesvr-goldsource

HEALTHCHECK NONE

ARG BUILD_NODE=unspecified
ARG GIT_REVISION=unspecified

LABEL architecture="amd64" \
    com.lacledeslan.build-node="$BUILD_NODE" \
    maintainer="Laclede's LAN <contact@lacledeslan.com>" \
    org.opencontainers.image.description="Laclede's LAN Deathmatch Classic Freeplay Dedicated Server" \
    org.opencontainers.image.revision="$GIT_REVISION" \
    org.opencontainers.image.source="https://github.com/LacledesLAN/gamesvr-goldsource-dmc" \
    org.opencontainers.image.vendor="Laclede's LAN"

COPY --chown=GoldSource:root ./amxmodx/metamod/metamod.so /app/dmc/addons/metamod/dlls/metamod.so

COPY --chown=GoldSource:root ./amxmodx/amxmodx_base /app/dmc/addons/amxmodx

COPY --chown=GoldSource:root ./amxmodx/amxmodx_ll-config /app/dmc/addons/amxmodx

COPY --chown=GoldSource:root ./dist /app

COPY --chown=GoldSource:root ./ll-tests /app/ll-tests

# UPDATE USERNAME & ensure permissions
RUN usermod -l DMC GoldSource && \
    chmod +x /app/ll-tests/*.sh && \
    mkdir -p /app/dmc/logs && \
    chmod 775 /app/dmc/logs;

RUN echo 40 > /app/steam_appid.txt;

USER DMC

WORKDIR /app

CMD ["/bin/bash"]

ONBUILD USER root
