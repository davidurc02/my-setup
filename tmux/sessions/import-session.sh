#!/bin/bash
sessionName="$1"
sessionDir="$(cd "$(dirname "$0")" && pwd)"

if [[ "$sessionName" == "casestack" ]]; then
  exec "$sessionDir/casestack-layout.sh" "$sessionName"
fi

exec "$sessionDir/fms-layout.sh" "$sessionName"

