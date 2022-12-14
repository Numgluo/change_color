#!/bin/bash
set -x

# Commit Comment
CT="$(date '+%Y/%m/%d %H:%M:%S')"
echo ${CT}

  # Git Management
GIT=git
${GIT} add $1
${GIT} commit -m "${CT}"
${GIT} tag -a "$2" -m "$3"
${GIT} push --tag origin main




