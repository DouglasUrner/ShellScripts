#!/bin/bash

# Specify language for syntax coloring as -LANG (e.g., -php).

case $1 in
  -*) LANG=`echo $1 | sed -e 's/-//'` ;;
   *) LANG=''
esac

curl -s -F 'sprunge=<-' http://sprunge.us | sed -e "s/$/$LANG/"
