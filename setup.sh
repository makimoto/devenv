#!/bin/sh -x
set -e

mitamae_version="v1.3.2"
mitamae_sha256="1775a7600e3c2464f9a33f62505c11b5691df9b0ecd36840fb587bb9bc04b295"

current_version="$($HOME/bin/mitamae version | cut -d" " -f2)"

if [ -f "$HOME/bin/mitamae" -a $mitamae_version == $current_version ]; then
  echo -e "mitamae is up-to-date"
  exit
fi

mkdir -p "$HOME/bin"
cd "$HOME/bin"

curl -o "mitamae.tar.gz" -fL "https://github.com/k0kubun/mitamae/releases/download/${mitamae_version}/mitamae-x86_64-darwin.tar.gz"
current_sha256="$(/usr/bin/openssl dgst -sha256 "mitamae.tar.gz" | cut -d" " -f2)"

if [ "$mitamae_sha256" != "$current_sha256" ]; then
  echo -e "Invalid binary...\nexpected: ${mitamae_sha256}\n  actual: ${sha256}"
  cd -
  exit 1
fi

tar xvzf mitamae.tar.gz
rm mitamae.tar.gz
chmod +x mitamae-x86_64-darwin
ln -fs mitamae-x86_64-darwin mitamae
