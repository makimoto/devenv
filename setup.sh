#!/bin/sh -x
set -e

mitamae_version="v1.3.2"

current_version="$($HOME/bin/mitamae version | cut -d" " -f2)"

if [ -f "$HOME/bin/mitamae" -a $mitamae_version == $current_version ]; then
  echo -e "mitamae is up-to-date"
  exit
fi


case "$(uname)" in
  "Linux")
    mitamae_bin="mitamae-x86_64-linux"
    mitamae_sha256="92633a9a9aad0506aa555ae722496285f80aca75c0173d0ed1614fbef371fbfb"
    ;;
  "Darwin")
    mitamae_bin="mitamae-x86_64-darwin"
    mitamae_sha256="1775a7600e3c2464f9a33f62505c11b5691df9b0ecd36840fb587bb9bc04b295"
    ;;
  *)
    echo "unexpected uname: $(uname)"
    exit 1
    ;;
esac

mkdir -p "$HOME/bin"
cd "$HOME/bin"

curl -o "mitamae.tar.gz" -fL "https://github.com/k0kubun/mitamae/releases/download/${mitamae_version}/${mitamae_bin}.tar.gz"
current_sha256="$(/usr/bin/openssl dgst -sha256 "mitamae.tar.gz" | cut -d" " -f2)"

if [ "$mitamae_sha256" != "$current_sha256" ]; then
  echo -e "Invalid binary...\nexpected: ${mitamae_sha256}\n  actual: ${sha256}"
  cd -
  exit 1
fi

tar xvzf mitamae.tar.gz
rm mitamae.tar.gz
chmod +x $mitamae_bin
ln -fs $mitamae_bin mitamae
