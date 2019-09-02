#!/bin/bash

# Generates a temporary workspace and opens VSCode there with a scratch pad.

tmpdir=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 10 | head -n 1)

mkdir /tmp/$tmpdir
cd /tmp/$tmpdir
touch /tmp/$tmpdir/file
code /tmp/$tmpdir
