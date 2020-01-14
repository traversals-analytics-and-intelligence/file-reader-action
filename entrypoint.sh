#!/bin/sh -l

if [[ -z "$1" ]]; then
  echo "::error::Missing input."
  exit 1
fi

content=$(cat $1)

# Escaping of \n and \r, because otherwise only the first line would be returned.
content="${content//$'\n'/'%0A'}"
content="${content//$'\r'/'%0D'}"

echo "::set-output name=content::${content}"