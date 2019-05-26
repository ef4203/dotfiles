#!/bin/bash

# "Google" something from the command line

firefox https://duckduckgo.com/?q=asd$( echo $@ | sed 's/ /+/g' )
