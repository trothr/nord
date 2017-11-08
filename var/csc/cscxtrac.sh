#!/bin/sh



grep "^#$1#" "$2" | sed "s/^#$1#//"



