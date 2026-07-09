#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"

assert_contains() {
  local pattern="$1"
  local file="$2"

  if ! grep -q "$pattern" "$file"; then
    echo "Expected pattern '$pattern' in $file" >&2
    exit 1
  fi
}

assert_contains 'ENTRYPOINT \["/home/sdtdserver/user.sh"\]' Dockerfile
assert_contains 'COPY --chmod=755 install.sh user.sh /home/sdtdserver/' Dockerfile
assert_contains 'COPY --chmod=755 scripts/ /home/sdtdserver/scripts' Dockerfile
assert_contains 'EXPOSE 26900 26900/udp 26901/udp 26902/udp 8082 8081 8080' Dockerfile
assert_contains 'VOLUME /home/sdtdserver/serverfiles/' Dockerfile
assert_contains 'START_MODE=0' Dockerfile

assert_contains 'su-exec sdtdserver bash /home/sdtdserver/install.sh' user.sh
assert_contains 'trap exit_handler SIGINT SIGTERM' user.sh
assert_contains 'service cron start' user.sh

assert_contains 'source "$scriptsDir/check_script.sh"' install.sh
assert_contains 'source "$scriptsDir/first_install.sh"' install.sh
assert_contains 'source "$scriptsDir/server_start.sh"' install.sh
assert_contains 'source "$scriptsDir/server_update.sh"' install.sh
assert_contains 'source "$scriptsDir/server_backup.sh"' install.sh
assert_contains 'source "$scriptsDir/check_startMode.sh"' install.sh

assert_contains 'bash linuxgsm.sh sdtdserver' scripts/check_script.sh
assert_contains './sdtdserver auto-install' scripts/first_install.sh
assert_contains './sdtdserver start' scripts/server_start.sh
assert_contains './sdtdserver update' scripts/server_update.sh
assert_contains 'source $scriptsDir/Mods/mods_install.sh' scripts/server_update.sh

bash -n install.sh
bash -n user.sh
find scripts -type f -name "*.sh" -print0 | xargs -0 -n1 bash -n
