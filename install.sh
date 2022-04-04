#!/usr/bin/env bash

set -e

ABSOLUTE_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROSDEP_SOURCES_TARGET="/etc/ros/rosdep/sources.list.d"

echo "Copying custom rosdep files to the rosdep sources dir ..."
echo "Files to install:"
echo "- ${ABSOLUTE_PATH}/10-upenn-gokart-dependencies.list"
echo "Target dir: ${ROSDEP_SOURCES_TARGET}"
echo "Note: sudo might ask for your password now"
sudo cp "${ABSOLUTE_PATH}/10-upenn-gokart-dependencies.list" "${ROSDEP_SOURCES_TARGET}/"

echo "Running rosdep update ..."
rosdep update
