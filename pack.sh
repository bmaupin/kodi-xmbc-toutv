#!/bin/bash

cd src
pluginname=`ls`
pluginversion=`grep '<addon' $pluginname/addon.xml | grep -Po '(?<=version=")\d+\.\d+\.\d+'`
rm -f ../$pluginname-*.zip
zip -r ../$pluginname-$pluginversion.zip .
cd ..
