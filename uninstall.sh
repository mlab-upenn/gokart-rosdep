#!/usr/bin/env bash

set -e

ROSDEP_SOURCES_TARGET="/etc/ros/rosdep/sources.list.d"

# includes older versions
all_possible_custom_files=(
  "${ROSDEP_SOURCES_TARGET}/10-upenn-gokart-dependencies.list"
  "${ROSDEP_SOURCES_TARGET}/10-gokart-dependencies.list"
  "${ROSDEP_SOURCES_TARGET}/gokart-dependencies.yaml"
)

echo "Removing custom rosdep files from the rosdep sources dir ..."
echo "Files to remove:"
for file in "${all_possible_custom_files[@]}"; do
  echo "- $file"
done
echo "Note: sudo might ask for your password now"
sudo rm -f "${all_possible_custom_files[@]}"

echo "Running rosdep update ..."
rosdep update
