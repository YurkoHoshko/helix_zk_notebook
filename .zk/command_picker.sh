#!/bin/bash

# Get all aliases names, ouput them comma separated, split them into new lines, feed to fzf. After alias is selected - pass it to zk for execution. Capture result into clipboard.
yq '.alias | keys' -oc .zk/config.toml | tr ',' "\n" | fzf --print0 | xargs -0 -o zk | pbcopy
