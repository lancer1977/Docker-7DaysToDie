# [vinanrra/7dtd-server](https://github.com/vinanrra/Docker-7DaysToDie)

## Tags

- docker
- docker-7-days-to-die
- devops
- docs
- ui
- server

# 7 Days To Die server using LinuxGSM in Docker with backups, monitoring, auto-installable mods, and more

[![Docker Pulls](https://img.shields.io/badge/dynamic/json?color=red&label=pulls&query=pull_count&url=https%3A%2F%2Fhub.docker.com%2Fv2%2Frepositories%2Fvinanrra%2F7dtd-server%2F?style=flat-square&color=E68523&logo=docker&logoColor=white)](https://hub.docker.com/r/vinanrra/7dtd-server)
[![Docker Stars](https://img.shields.io/badge/dynamic/json?color=red&label=stars&query=star_count&url=https%3A%2F%2Fhub.docker.com%2Fv2%2Frepositories%2Fvinanrra%2F7dtd-server%2F?style=flat-square&color=E68523&logo=docker&logoColor=white)](https://hub.docker.com/r/vinanrra/7dtd-server)
[![Docker Last Updated](https://img.shields.io/badge/dynamic/json?color=red&label=Last%20Update&query=last_updated&url=https%3A%2F%2Fhub.docker.com%2Fv2%2Frepositories%2Fvinanrra%2F7dtd-server%2F?style=flat-square&color=E68523&logo=docker&logoColor=white)](https://hub.docker.com/r/vinanrra/7dtd-server)

![7DaysToDie](7dtd.png)

## What this repo provides

- LinuxGSM-based dedicated server container image
- Docker Compose deployment examples
- backup, monitoring, and alerting guidance
- optional mod-install and user/group configuration
- feature and parameter documentation for the runtime image

## V1 baseline

- The image build and Compose usage are documented and stable.
- The deployment docs cover the current supported runtime shape.
- V1 means the container can be started, configured, and maintained without guessing.

## Information

- If you want to change any server settings, edit `/path/to/ServerFiles/sdtdserver.xml`.
- Read the docs before changing the deployment shape.
- If you have a problem with the image or docs, open a GitHub issue in the upstream project.

## Getting started

1. Review the usage and parameter docs.
2. Decide whether you want raw `docker run` or Compose.
3. Configure the server files, mods, and volume paths.
4. Start the container and verify the logs and backup path.

## Documentation

- [Usage](docs/usage.md)
- [Parameters](docs/parameters.md)
- [Updating Info](docs/updating_info.md)
- [Support Info](docs/support.md)
- [Feature Index](./docs/features/README.md)
- [Core Capabilities](./docs/features/core-capabilities.md)
- [Roadmap](./docs/roadmaps/portfolio-roadmap.md)

## Donations

   If you want to buy me a beer here you can

   <a href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=25XWMUHD8NZHG&source=url" rel="PayPal">![PayPal](https://www.paypalobjects.com/en_US/i/btn/btn_donate_SM.gif)

## Thanks

* **[LinuxGSM](https://linuxgsm.com/)** - For the awesome script
* **[Linuxserver](https://www.linuxserver.io/)** - For readme structure and all the info.
* **[Linuxserver Base Image](https://github.com/linuxserver/docker-baseimage-ubuntu/blob/bionic/root/etc/cont-init.d/10-adduser)** - For the user script.
* **[Codestation Reddit User](https://www.reddit.com/r/docker/comments/evn3st/permission_problems_with_volumes/fg16w87/)** - Permission problems with volumes
* **All contributors**
