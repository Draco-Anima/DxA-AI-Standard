#!/usr/bin/env bash
set -euo pipefail

fail=0

error() {
  printf 'PUBLIC-SAFETY: %s\n' "$1" >&2
  fail=1
}

if git ls-files --error-unmatch USER.md >/dev/null 2>&1; then
  error 'root USER.md is private; publish templates/USER.md only.'
fi

if git ls-files | grep -Eq '(^|/)\.work(/|$)'; then
  error '.work/ content must not be published.'
fi

if git ls-files 'projects/**' | grep -Ev '^projects/learning/' | grep -q .; then
  error 'projects/ may only contain projects/learning/ in the public repository.'
fi

while IFS= read -r path; do
  case "$path" in
    .gitignore|README.md|LICENSE|CHANGELOG.md|CONTRIBUTING.md|core/*|templates/*|projects/learning/*|scripts/public-safety-check.sh|.github/PULL_REQUEST_TEMPLATE.md|.github/workflows/public-safety.yml)
      ;;
    *)
      error "unexpected tracked path: $path"
      ;;
  esac
done < <(git ls-files)

if (( fail != 0 )); then
  exit 1
fi

printf 'PUBLIC-SAFETY: repository structure is safe for public distribution.\n'
