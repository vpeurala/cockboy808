#!/bin/bash
cat Pipfile.lock | jq --raw-output '.default | with_entries(.value |= .version) | to_entries[] | [.key, .value] | @csv' | sed 's/"\([^"]*\)",/\1 = /'
