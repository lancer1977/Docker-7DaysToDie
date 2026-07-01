#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"

required_paths=(
  "README.md"
  "Dockerfile"
  "install.sh"
  "user.sh"
  "docs/README.md"
  "docs/features/README.md"
  "docs/features/version-coverage-map.md"
  "deploy/docker-compose.local.yml"
  "deploy/nginx/docker-compose.local.yml"
  "deploy/nginx/docker-compose.portainer.yml"
  "deploy/portainer-stack.yml"
  "scripts/check_script.sh"
  "scripts/check_startMode.sh"
  "scripts/server_start.sh"
  "scripts/server_update.sh"
)

for path in "${required_paths[@]}"; do
  if [[ ! -e "$path" ]]; then
    echo "Missing required path: $path" >&2
    exit 1
  fi
done

grep -q "../7Days-Support" README.md docs/features/version-coverage-map.md
grep -q "established_versions: \\[V0\\]" docs/features/version-coverage-map.md
grep -q "delegated_versions: \\[V1, V2, V3, V4, V5\\]" docs/features/version-coverage-map.md
grep -q "linuxgsm.sh" Dockerfile scripts/check_script.sh
grep -q "ENTRYPOINT" Dockerfile
grep -q "EXPOSE 26900" Dockerfile
grep -q "START_MODE" Dockerfile scripts/check_startMode.sh

bash -n install.sh
bash -n user.sh
find scripts -type f -name "*.sh" -print0 | xargs -0 -n1 bash -n

docker compose -f deploy/docker-compose.local.yml config --quiet
docker compose -f deploy/nginx/docker-compose.local.yml config --quiet
docker compose -f deploy/nginx/docker-compose.portainer.yml config --quiet
docker compose -f deploy/portainer-stack.yml config --quiet
