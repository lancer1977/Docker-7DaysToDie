# QA Runbook — Docker-7DaysToDie

The shared procedure lives in the project hub and is the canonical copy:

**`~/projects/game-runtimes/docs/QA-RUNBOOK.md`**

It covers image-digest verification, the deploy/teardown checks, save
persistence, idempotent re-apply, and the physical-host smoke checklist for
every runtime in the hub. Do not fork the procedure into this file — update
the canonical copy instead.

## Values for this repo

| | |
| --- | --- |
| Image | `ghcr.io/lancer1977/7dtd-server` |
| Deploy branch | `master` |
| Publishing workflows | `.github/workflows/docker-publish.yml`, `docker-publish-test.yml` |
| Stack (prod) | `alienware/7days-fresh` |
| Stack (dev) | `alienware/7days-fresh-dev` |
| Game container | `7days_fresh` |
| Sidecar | `7days-wg` |
| Host data | `/home/lancer1977/game_servers/7days-fresh` |
| Player ports | `26900/tcp`, `26900-26902/udp` |

## Repo-specific notes

- First start is slow: the image installs server files via SteamCMD before
  launching. Watch `docker logs -f 7days_fresh` rather than restarting.
- The 7DTD web/admin ports stay **private** unless separately approved. Step
  1.4 of the canonical runbook checks this explicitly.
- `docker-publish.yml` publishes `latest` from `master`; a release tag is
  additive and only appears when a release is actually published. This fork
  has no tags, so do not expect a version-tagged image.
- `docker-publish-test.yml` publishes `:test` and is triggered by
  prerelease/unpublished release events — never treat `:test` as deployable.
