#!/bin/bash
echo "[$0] vs. [${BASH_SOURCE[0]}]"
#SCRIPT_DIR="$( cd "$( dirname "${0}" )" && pwd )"
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
eval "$(bbl print-env -s $SCRIPT_DIR)"
