#/bin/zsh

# This script creates a release tarball for the iOS rules.
# The primary logic is copied from create_release.sh.

SHA=$(git rev-parse --short HEAD)

COPYFILE_DISABLE=1 tar czvf "rules_ios.$SHA.tar.gz" \
    --exclude="./.vscode" \
    --exclude="./bazel-*" \
    --exclude="./tests" \
    ./*
