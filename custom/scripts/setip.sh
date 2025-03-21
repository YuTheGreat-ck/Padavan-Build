#!/bin/sh
lanip=$1
defaultfile=$2
dicfile=$3
oc1=${lanip%%.*}
x=${lanip#*.*}
oc2=${x%%.*}
x=${x#*.*}
oc3=${x%%.*}
dhcpfrom=$oc1"."$oc2"."$oc3".100"
dhcpto=$oc1"."$oc2"."$oc3".244"
sed -i "s/\"10.10.10.10\"/\"$lanip\"/g" $defaultfile
sed -i "s/\"10.10.10.10\"/\"$dhcpfrom\"/g" $defaultfile
sed -i "s/\"10.10.10.244\"/\"$dhcpto\"/g" $defaultfile
sed -i "s/10.10.10.10/$lanip/" $dicfile
