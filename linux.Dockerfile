# escape=`
FROM lacledeslan/gamesvr-goldsource

HEALTHCHECK NONE

ARG BUILDNODE=unspecified
ARG SOURCE_COMMIT=unspecified

LABEL com.lacledeslan.build-node=$BUILDNODE `
      org.label-schema.schema-version="1.0" `
      org.label-schema.url="https://github.com/LacledesLAN/README.1ST" `
      org.label-schema.vcs-ref=$SOURCE_COMMIT `
      org.label-schema.vendor="Laclede's LAN" `
      org.label-schema.description="Laclede's LAN Deathmatch Classic Freeplay Dedicated Server" `
      org.label-schema.vcs-url="https://github.com/LacledesLAN/gamesvr-goldsource-dmc"

COPY --chown=GoldSource:root ./amxmodx/metamod/metamod.so /app/dmc/addons/metamod/dlls/metamod.so

COPY --chown=GoldSource:root ./amxmodx/amxmodx_base /app/dmc/addons/amxmodx

COPY --chown=GoldSource:root ./amxmodx/amxmodx_ll-config /app/dmc/addons/amxmodx

COPY --chown=GoldSource:root ./dist /app

COPY --chown=GoldSource:root ./ll-tests /app/ll-tests

# UPDATE USERNAME & ensure permissions
RUN usermod -l DMC GoldSource &&`
    chmod +x /app/ll-tests/*.sh &&`
    mkdir -p /app/dmc/logs &&`
    chmod 775 /app/dmc/logs;

USER DMC

WORKDIR /app

CMD ["/bin/bash"]

ONBUILD USER root
