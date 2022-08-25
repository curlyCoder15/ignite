#!/usr/bin/env bash
#
# Setup Script
#
echo "This will snackify your project and will delete some important folders like ios and android"
read -p "Are you sure you want to continue? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    # do dangerous stuff
    rm -rf ios android e2e jest.config.js metro.config.js webpack.config.js
    yarn remove @expo/webpack-config reactotron-react-native detox detox-expo-helpers ts-jest jest metro-config @rnx-kit/metro-config 
fi