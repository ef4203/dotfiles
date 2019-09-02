#!/bin/bash

# "Google" something from the command line

firefox https://duckduckgo.com/?q=$( echo $@ | sed 's/ /+/g' )
