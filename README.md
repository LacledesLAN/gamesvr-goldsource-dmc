![Laclede's LAN Deathmatch Classic Freeplay Dedicated Server in Docker](https://raw.githubusercontent.com/LacledesLAN/gamesvr-goldsource-dmc/master/.misc/banner-goldsource-dmc.png?token=AMNjdgmBT2XZqn2seZ8MKbPJ3A7Ni3-Eks5bwqBPwA%3D%3D "Laclede's LAN Deathmatch Classic Freeplay Dedicated Server in Docker")

Deathmatch Classic was conceived by Valve as a tribute to id Software, and is essentially a remake of the multiplayer component of id's Quake. The gameplay is similar to Quake Deathmatch, with essentially the same weapons (except the weapon for melée combat, which is Half-Life's trademark crowbar instead of the original axe). DMC also imitates Quake's physics, which allows an advanced player to gain a lot of extra speed or jump very high by using a number of movement skills such as bunny hopping and rocket jumping.

# About

This repository is maintained by [Laclede's LAN](https://lacledeslan.com). Its contents are heavily tailored and tweaked for use at our charity LAN-Parties. For third-parties we recommend using this repo only as a reference example and then building your own using [gamesvr-goldsource](https://github.com/LacledesLAN/gamesvr-goldsource) as the base image for your customized server.

## Linux

[![Build Status](https://travis-ci.org/LacledesLAN/gamesvr-goldsource-dmc.svg?branch=master)](https://travis-ci.org/LacledesLAN/gamesvr-goldsource-dmc)
[![](https://images.microbadger.com/badges/version/lacledeslan/gamesvr-goldsource-dmc.svg)](https://microbadger.com/images/lacledeslan/gamesvr-goldsource-dmc "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/lacledeslan/gamesvr-goldsource-dmc.svg)](https://microbadger.com/images/lacledeslan/gamesvr-goldsource-dmc "Get your own image badge on microbadger.com")

### Download

```shell
docker pull lacledeslan/gamesvr-goldsource-dmc;
```

### Run Self Tests

The image includes a test script that can be used to verify its contents. No changes or pull-requests will be accepted to this repository if any tests fail.

```shell
docker run -it --rm lacledeslan/gamesvr-goldsource-dmc ./ll-tests/gamesvr-goldsource-dmc.sh;
```

### Run Interactive Server

```shell
docker run -it --net=host lacledeslan/gamesvr-goldsource-dmc ./hlds_run +sv_lan 1 -game dmc +map dcdm5 +maxplayers 16;
```

## List of Maps

| Screenshot | Map | Stock? | Notes |
| ---------- | -------- | ------- | ----- |
| [![dmc_dm2](https://raw.githubusercontent.com/LacledesLAN/gamesvr-goldsource-dmc/master/.documentation/overviews/dmc_dm2_thumb.gif)](https://raw.githubusercontent.com/LacledesLAN/gamesvr-goldsource-dmc/master/.documentation/overviews/dmc_dm2.gif)  | dmc_dm2  | Y | based on DM2: Claustrophobopolis    |
| [![dmc_dm3](https://raw.githubusercontent.com/LacledesLAN/gamesvr-goldsource-dmc/master/.documentation/overviews/dmc_dm3_thumb.gif)](https://raw.githubusercontent.com/LacledesLAN/gamesvr-goldsource-dmc/master/.documentation/overviews/dmc_dm3.gif) | dmc_dm3  | Y | based on DM3: The Abandoned Base    |
| [![dmc_dm4](https://raw.githubusercontent.com/LacledesLAN/gamesvr-goldsource-dmc/master/.documentation/overviews/dmc_dm4_thumb.gif)](https://raw.githubusercontent.com/LacledesLAN/gamesvr-goldsource-dmc/master/.documentation/overviews/dmc_dm4.gif) | dmc_dm4  | Y | based on DM4: The Bad Place         |
| [![dmc_dm6](https://raw.githubusercontent.com/LacledesLAN/gamesvr-goldsource-dmc/master/.documentation/overviews/dmc_dm6_thumb.gif)](https://raw.githubusercontent.com/LacledesLAN/gamesvr-goldsource-dmc/master/.documentation/overviews/dmc_dm6.gif) | dmc_dm6  | Y | based on DM6: The Dark Zone         |
| [![dmc_e1m2](https://raw.githubusercontent.com/LacledesLAN/gamesvr-goldsource-dmc/master/.documentation/overviews/dmc_e1m2_thumb.gif)](https://raw.githubusercontent.com/LacledesLAN/gamesvr-goldsource-dmc/master/.documentation/overviews/dmc_e1m2.gif) | dmc_e1m2 | Y | based on E1M2: Castle of the Damned |
| [![dcdm5](https://raw.githubusercontent.com/LacledesLAN/gamesvr-goldsource-dmc/master/.documentation/overviews/dcdm5_thumb.gif)](https://raw.githubusercontent.com/LacledesLAN/gamesvr-goldsource-dmc/master/.documentation/overviews/dcdm5.gif) | dcdm5    | Y | based on DM5: The Cistern           |
| [![p_se_3](https://raw.githubusercontent.com/LacledesLAN/gamesvr-goldsource-dmc/master/.documentation/overviews/p_se_3_thumb.gif)](https://raw.githubusercontent.com/LacledesLAN/gamesvr-goldsource-dmc/master/.documentation/overviews/p_se_3.gif) | p_se_3   | Y | based on the map "Venom"            |

## Getting Started with Game Servers in Docker

[Docker](https://docs.docker.com/) is an open-source project that bundles applications into lightweight, portable, self-sufficient containers. For a crash course on running Dockerized game servers check out [Using Docker for Game Servers](https://github.com/LacledesLAN/README.1ST/blob/master/GameServers/DockerAndGameServers.md). For tips, tricks, and recommended tools for working with Laclede's LAN Dockerized game server repos see the guide for [Working with our Game Server Repos](https://github.com/LacledesLAN/README.1ST/blob/master/GameServers/WorkingWithOurRepos.md). You can also browse all of our other Dockerized game servers: [Laclede's LAN Game Servers Directory](https://github.com/LacledesLAN/README.1ST/tree/master/GameServers).
