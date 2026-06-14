# Docker-7DaysToDie Docs

Canonical docs entrypoint for the 7 Days to Die Docker runtime lane.

This folder covers the deployable/analyzable infra layer: the bootable server wrapper, sidecar/readback boundary, deployment lane, and smoke-test expectations for `V0`. The canonical support home lives in `../7Days-Support`, and `V1` keeps this repo on the runtime/deploy lane.

Start here for routing, then use the repository README for the compact runtime-lane summary.

## Per-Repo Fill-In

- Repo: `Docker-7DaysToDie`
- Sibling: `../../7Days-Support`
- Boundary: runtime-only docs entrypoint; keep support/home guidance in the sibling and shared contracts in `Api.GameServerInterop`
- Build/Smoke: `docker build -t vinanrra/7dtd-server . && bash scripts/check_script.sh && bash scripts/check_startMode.sh`
- Caveats: keep the docs lane aligned to runtime/deploy concerns and avoid pulling support ownership into this repo

## 252 Deployment Status

- 252 deployment status: live on 192.168.0.252 via the 7 Days runtime lane (`7days_fresh` and `7days-wg`); see [252 Deployment Status](../../Api.GameServerInterop/docs/roadmap/252-deployment-status.md)
## Entry Points

- [Repository README](../README.md)
- [Feature Index](./features/README.md)
- [Portfolio roadmap](./roadmaps/portfolio-roadmap.md)
- [252 operator matrix](../../gitops/docs/roadmaps/game-server-252-operator-matrix.md)

## Notes

- Keep shared telemetry, health, capability, and adapter contracts in `Api.GameServerInterop`.
- Keep runtime/deployment details here and in the feature or roadmap docs, not in the shared interop package.
