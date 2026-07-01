---
title: Version Coverage Map
status: draft
owner: @DreadBreadcrumb
priority: high
complexity: 2
created: 2026-06-30
updated: 2026-06-30
tags: [feature, 7-days-to-die, v-layer, runtime]
established_versions: [V0]
delegated_versions: [V1, V2, V3, V4, V5]
---

# Version Coverage Map

This page maps `Docker-7DaysToDie` to the shared V-layer ladder as the 7 Days
runtime/deploy lane. The canonical support-home versions are delegated to
`../7Days-Support`.

## Coverage Summary

| Layer | Tag | Current coverage | Evidence | Next proof |
| --- | --- | --- | --- | --- |
| `V0` infra baseline | `established` | Runtime image source, LinuxGSM install path, ports, volumes, mods/backups/monitoring scripts, and deployment docs exist | `Dockerfile`, `install.sh`, `user.sh`, `scripts/`, docs, `scripts/validate.sh` | Run the full image build and container smoke when changing runtime behavior |
| `V1` support-home boundary | `delegated` | Canonical support home lives outside this repo | `../7Days-Support` references | Keep this repo runtime-only |
| `V2` read-only support proof | `delegated` | Support-sidecar/readback contracts belong in the support home and shared API packages | `../7Days-Support`, `Api.7DaysSharp`, `Api.GameServerInterop` | Runtime lane can provide logs, ports, and server lifecycle evidence |
| `V3` control truth | `delegated` | Capability/action classification belongs in support/API contracts | `../7Days-Support`, `Api.7DaysSharp` | Do not add operator policy to this image repo |
| `V4` public/operator projection | `delegated` | Operator/public projection belongs in support/UI layers | `../7Days-Support`, `cc-sidecar` | Runtime may feed public-safe read-only state after support integration |
| `V5` approval-gated gameplay proof | `delegated` | Gameplay proof belongs in support/plugin/runtime integration, not the image lane alone | support/plugin/API lanes | Runtime repo can host the server target, but approval/audit policy lives elsewhere |

## Runtime Boundary

`V0` is established for this runtime lane at the source/config level because the
repo contains the Dockerfile, LinuxGSM bootstrap path, runtime scripts, exposed
ports, volume mounts, and deployment docs.

This does not make the repo the owner of support-home contracts, public
projection, or gameplay approval policy.

## Validation

Current validation anchors:

```bash
bash scripts/validate.sh
docker build -t vinanrra/7dtd-server .
bash scripts/check_script.sh
bash scripts/check_startMode.sh
```

`scripts/validate.sh` is the fast source/config check. The Docker build and
runtime scripts are the heavier runtime smoke path.
