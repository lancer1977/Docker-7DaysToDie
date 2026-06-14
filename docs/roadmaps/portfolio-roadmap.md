# Docker-7DaysToDie portfolio roadmap

## Shared infra ladder

This repo follows the shared `Api.GameServerInterop` ladder. `V0` is the infra floor and `V1` points back to `../7Days-Support` as the support-home boundary.

- `V0`: bootable server or wrapper, support-sidecar/readback, deployment lane, and smoke tests.
- `V1`: canonical support home lives in `../7Days-Support`; this repo remains the runtime/deploy lane.
- `V2`: read-only support proof.
- `V3`: capability and control truth.
- `V4`: public/operator projection.
- `V5`: approval-gated gameplay proof.

## 90-day evidence snapshot
- Commits (90 days): 5
- Files changed (90 days): 19
- Last signal: e017bfb (4 days ago)
- Top modified areas: docs(9);00_agile(6);README.md(1);Dockerfile.ubuntu18.backup(1);Dockerfile(1);.gitattributes(1)
- Notes: clean_at_scan

## Current repo posture
- Stack: Other/Assets
- Docs folder: yes
- Roadmap folder: no
- Features docs: yes
- Tests indexed: no
- Boundary: deploy/runtime lane for 7 Days to Die, not the shared interop package.

## Shared phase model

This roadmap follows the shared `PolyhydraGames.GameServerInterop` phase ladder as a reference point:

- `V1` - deployment stability and reproducible packaging
- `V2` - confidence, compatibility, and docs/runbook hardening
- `V3` - sidecar or bridge baseline, if the repo ever adds one
- `V4` - downstream integration, if the repo ever adds one

The current repo only needs the V1 deployment baseline today.

## Discovery
- [x] Capture and timestamp recent change signal
- [x] Capture top-level area concentration
- [ ] Document owner and intent for area: docs(9)
- [ ] Add explicit release gates for next validation steps

## V1 (stability)
- [ ] Close gaps in docs and feature notes for recently touched areas
- [ ] Add or update smoke checks for changed source paths
- [ ] Validate packaging and deploy assumptions where infra/config changed

## V0 note
- [ ] Keep the bootable runtime, sidecar/readback boundary, and deployment lane explicit in the docs whenever the image or wrapper changes.

## V2 (confidence)
- [ ] Add deeper tests on highest-churn areas
- [ ] Expand runbooks for recurring operator or publishing workflows
- [ ] Standardize naming and checklist structure for future items

## V4 (scale)
- [ ] Move to a stable platform pattern with cross-repo checklist templates
- [ ] Split roadmap into discrete feature-level and initiative-level folders
- [ ] Define long-range acceptance criteria with operational and product owners

## Top touched files (90-day top 10)
- .gitattributes
- 00_agile/backlog/.gitkeep
- 00_agile/doing/.gitkeep
- 00_agile/done/.gitkeep
- 00_agile/epics/.gitkeep
- ... and 5 more

## Follow-up ideas
- [ ] Convert area signals into one short feature roadmap within docs/features
- [ ] Add changelog notes in docs for behavior-impacting updates
- [ ] Add simple owner checklist for release readiness
