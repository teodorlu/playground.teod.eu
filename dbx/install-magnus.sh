#!/usr/bin/env sh

ln -sf dbxx.clj /usr/local/bin/dbxx

mkdir -p ~/.config/dbx/
ln -sf dbx.edn ~/.config/dbx/dbx.edn


# Copy to .zshrc or .bashrc:
#
#   function dbx() {
#       dbxx "$@"
#   }
#
