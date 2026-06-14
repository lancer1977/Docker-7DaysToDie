---
title: Feature Index
status: done
owner: @DreadBreadcrumb
priority: high
complexity: 1
created: 2026-03-22
updated: 2026-03-22
tags: [documentation, Docker-7DaysToDie]
---

# Feature Index

This directory documents all features and roadmap items. All state is now tracked in front matter.

The repo boundary is the Docker runtime lane. Keep the `V0` infra baseline explicit: bootable server or wrapper, support-sidecar/readback, deployment lane, and smoke tests, with shared contracts in `Api.GameServerInterop`. `V1` stays anchored in `../7Days-Support`.

## Core Features (Existing Functionality)

- [**Multi-version** you can choose which version you want to play, [more info](../parameters.md#7-days-to-die).](./multi-version-you-can-choose-which-version-you-want-to-play-more-info-docs-parameters-md-7-days-to-die.md)
- [**Auto-installable mods**, [more info](../mods_support.md#mods) also check [Mods parameters](../parameters.md#mods).](./auto-installable-mods-more-info-docs-mods-support-md-mods-also-check-mods-parameters-docs-parameters-md-mods.md)
- [**Automatic Backups**, [more info](../backups.md) also check [LinuxGSM parameters](../parameters.md#linuxgsm)](./automatic-backups-more-info-docs-backups-md-also-check-linuxgsm-parameters-docs-parameters-md-linuxgsm.md)
- [**Monitor** if server crashes it will be restarted, [more info](../parameters.md#linuxgsm).](./monitor-if-server-crashes-it-will-be-restarted-more-info-docs-parameters-md-linuxgsm.md)
- [**Alerts** if server requires your attention, [more info](../alerts.md#alerts) also check [LinuxGSM parameters](../parameters.md#linuxgsm).](./alerts-if-server-requires-your-attention-more-info-docs-alerts-md-alerts-also-check-linuxgsm-parameters-docs-parameters-md-linuxgsm.md)
- [**User/Group Identifiers**, [more info](../user_groups_identifiers.md).](./user-group-identifiers-more-info-docs-user-groups-identifiers-md.md)


## Beyond the App

- Shared utilities, local development tools, and the deployment/runtime lane for the 7 Days server.
