#!/usr/bin/env bash

for file in $(find cmd -name "*.go"); do
  target="$GOPATH"/bin/$(basename $(dirname "$file"))
  echo "build $file as $target"
  go build -o "$target" "$file";
  chmod +x "$target"
done
