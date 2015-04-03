#!/bin/bash
echo
echo "*** md5compare ***"
echo
echo
echo -n "Paste md5sum: "
read md5paste
read -e -p "Select file to compare.  " -i "/home/dean/Downloads/" md5orig
md5file=$(md5sum $md5orig | cut -c1-32)
echo
echo "Comparing..."
sleep 1
if [[ $md5file == $md5paste ]]; then
echo "*** Valid match! ***"
echo "*** $md5file "
echo "*** $md5paste "
echo
else
echo "*** ERROR! Invalid Match. ***"
echo "*** $md5file "
echo "*** $md5paste "
echo
fi
exit 0
