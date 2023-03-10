#!/usr/bin/env fish
#  yq -o json -p yaml ./messages/message.yaml > ./message.json
 while true
  fswatch -1 5 ./messages
  yq -o json -p yaml ./messages/message.yaml > ./message.json
end

