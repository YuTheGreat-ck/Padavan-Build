#!/bin/sh
account=$1
password=$2
defaultfile=$3

if [ -n "$account" ]; then
	sed -i "28s/\"yuthegreat\"/\"$account\"/g" $defaultfile
fi
if [ -n "$password" ]; then
	sed -i "47s/\"yuchao926\"/\"$password\"/g" $defaultfile
fi
