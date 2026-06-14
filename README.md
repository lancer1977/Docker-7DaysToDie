# [vinanrra/7dtd-server](https://github.com/vinanrra/Docker-7DaysToDie)

## Tags

- docker
- docker-7-days-to-die
- devops
- docs
- ui
- server

# 7 Days To Die server using LinuxGSM in Docker with backups, monitor, auto-installable mods and more

## Per-Repo Fill-In

- Repo: `Docker-7DaysToDie`
- Sibling: `../7Days-Support`
- Boundary: runtime-only deploy lane; keep support/home content in the sibling and shared contracts in `Api.GameServerInterop`
- Build/Smoke: `docker build -t vinanrra/7dtd-server . && bash scripts/check_script.sh && bash scripts/check_startMode.sh`
- Caveats: keep this repo focused on runtime/deploy behavior and do not move support-home ownership here

## 252 Deployment Status

- 252 deployment status: live on 192.168.0.252 via the 7 Days runtime lane (`7days_fresh` and `7days-wg`); see [252 Deployment Status](../Api.GameServerInterop/docs/roadmap/252-deployment-status.md)
## Goal Path

This repo is the deploy/runtime lane for the 7 Days to Die support shape. The canonical support home lives in `../7Days-Support`.

- `V0` is the shared infra baseline: a bootable server or wrapper, a support-sidecar or readback path, Docker or compose deployment, and smoke checks that prove the server starts.
- `V1` is the support-home boundary pass; this repo stays on the runtime lane.
- Shared telemetry, health, capability, and adapter contracts belong in `Api.GameServerInterop`.
- Higher layers should stay aligned to the shared ladder rather than redefining the runtime boundary here.

See [Docs](docs/README.md) for the local navigation entrypoint and [Portfolio roadmap](docs/roadmaps/portfolio-roadmap.md) for the current ladder notes.

[![Docker Pulls](https://img.shields.io/badge/dynamic/json?color=red&label=pulls&query=pull_count&url=https%3A%2F%2Fhub.docker.com%2Fv2%2Frepositories%2Fvinanrra%2F7dtd-server%2F?style=flat-square&color=E68523&logo=docker&logoColor=white)](https://hub.docker.com/r/vinanrra/7dtd-server)
[![Docker Stars](https://img.shields.io/badge/dynamic/json?color=red&label=stars&query=star_count&url=https%3A%2F%2Fhub.docker.com%2Fv2%2Frepositories%2Fvinanrra%2F7dtd-server%2F?style=flat-square&color=E68523&logo=docker&logoColor=white)](https://hub.docker.com/r/vinanrra/7dtd-server)
[![Docker Last Updated](https://img.shields.io/badge/dynamic/json?color=red&label=Last%20Update&query=last_updated&url=https%3A%2F%2Fhub.docker.com%2Fv2%2Frepositories%2Fvinanrra%2F7dtd-server%2F?style=flat-square&color=E68523&logo=docker&logoColor=white)](https://hub.docker.com/r/vinanrra/7dtd-server)

![7DaysToDie](7dtd.png)

## Features

* **Multi-version** you can choose which version you want to play, [more info](docs/parameters.md#7-days-to-die).
* **Auto-installable mods**, [more info](docs/mods_support.md#mods) also check [Mods parameters](docs/parameters.md#mods).
* **Automatic Backups**, [more info](docs/backups.md) also check [LinuxGSM parameters](docs/parameters.md#linuxgsm)
* **Monitor** if server crashes it will be restarted, [more info](docs/parameters.md#linuxgsm).
* **Alerts** if server requires your attention, [more info](docs/alerts.md#alerts) also check [LinuxGSM parameters](docs/parameters.md#linuxgsm).
* **User/Group Identifiers**, [more info](docs/user_groups_identifiers.md).

## Information

* If you want to change any server settings, edit `/path/to/ServerFiles/sdtdserver.xml`
* Read EVERYTHING to avoid any errors, if you have any problems open a [github ticket](https://github.com/vinanrra/Docker-7DaysToDie/issues).

## [Usage](docs/usage.md)

## [Parameters](docs/parameters.md)

## [Updating Info](docs/updating_info.md)

## [Support Info](docs/support.md)

## Donations

   If you want to buy me a beer here you can

   <a href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=25XWMUHD8NZHG&source=url" rel="PayPal">![PayPal](https://www.paypalobjects.com/en_US/i/btn/btn_donate_SM.gif)

## Thanks

* **[LinuxGSM](https://linuxgsm.com/)** - For the awesome script
* **[Linuxserver](https://www.linuxserver.io/)** - For readme structure and all the info.
* **[Linuxserver Base Image](https://github.com/linuxserver/docker-baseimage-ubuntu/blob/bionic/root/etc/cont-init.d/10-adduser)** - For the user script.
* **[Codestation Reddit User](https://www.reddit.com/r/docker/comments/evn3st/permission_problems_with_volumes/fg16w87/)** - Permission problems with volumes
* **All contributors**


## 📖 Documentation
Detailed documentation can be found in the following sections:
- [Docs README](./docs/README.md)
- [Feature Index](./docs/features/README.md)
- [Core Capabilities](./docs/features/core-capabilities.md)
- [252 operator matrix](../gitops/docs/roadmaps/game-server-252-operator-matrix.md)
