# Docker-7DaysToDie Docs

Canonical docs entrypoint for the 7 Days to Die Docker runtime lane.

This folder covers the deployable/analyzable infra layer: the bootable server wrapper, sidecar/readback boundary, deployment lane, and smoke-test expectations for `V0`. The canonical support home lives in `../7Days-Support`, and `V1` keeps this repo on the runtime/deploy lane.

Start here for routing, then use the repository README for the compact runtime-lane summary.

## Runtime-Lane Scope

- Boot proof: build the LinuxGSM-based image or run the source-level runtime
  contract smoke before a live server boot.
- Lifecycle proof: start, restart, stop, update, and observe the 7 Days runtime
  container without moving support-home policy into this image repo.
- Config proof: validate `START_MODE`, server file mounts, LGSM config mounts,
  ports, mods, backup settings, and runtime scripts.
- Logs proof: use `docker logs -f 7dtdserver` and LinuxGSM log paths as the
  runtime readback lane.
- Readback proof: keep this repo limited to container/server process state,
  ports, logs, backups, and file-backed runtime configuration evidence.
- Delegation: V2-V5 support-sidecar contracts, public/operator policy,
  approval, audit, rollback, and gameplay mutation belong in `../7Days-Support`,
  API/support packages, and shared interop packages.

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
- [Version Coverage Map](./features/version-coverage-map.md)
- [Portfolio roadmap](./roadmaps/portfolio-roadmap.md)
- [252 operator matrix](../../gitops/docs/roadmaps/game-server-252-operator-matrix.md)

## Notes

- Keep shared telemetry, health, capability, and adapter contracts in `Api.GameServerInterop`.
- Keep runtime/deployment details here and in the feature or roadmap docs, not in the shared interop package.
- Use `bash scripts/smoke_runtime_contract.sh` for the fast source-level runtime
  contract smoke before attempting a full image build or live server boot.
