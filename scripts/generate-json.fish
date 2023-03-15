#!/usr/bin/env fish
#  yq -o json -p yaml ./messages/message.yaml > ./message.json
 while true
  fswatch -1 5 --one-event ./messages/message.yaml
  yq -o json -p yaml ./messages/message.yaml > ./message.json
end

