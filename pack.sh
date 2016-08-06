#!/bin/bash

cd src
pluginname=`ls`
pluginversion=`grep '<addon' $pluginname/addon.xml | grep -Po '(?<=version=")\d+\.\d+\.\d+'`
pluginfilename=$pluginname-$pluginversion.zip
rm -f ../$pluginfilename
zip -r ../$pluginfilename .
cd ..
