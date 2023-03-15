#! /usr/bin/env sh
./scripts/serve.sh & ./scripts/move-images.fish & ./scripts/generate-json.fish && fg
